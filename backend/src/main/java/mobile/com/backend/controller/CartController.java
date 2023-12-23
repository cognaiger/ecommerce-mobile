package mobile.com.backend.controller;

import lombok.RequiredArgsConstructor;
import mobile.com.backend.dto.reponse.product.LaptopGeneralResponse;
import mobile.com.backend.dto.reponse.product.ProductGeneralResponse;
import mobile.com.backend.dto.request.product.LaptopPageRequest;
import mobile.com.backend.entity.product.Laptop;
import mobile.com.backend.entity.product.Product;
import mobile.com.backend.security.utils.SecurityContextUtil;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.service.CartService;
import mobile.com.backend.service.product.LaptopService;
import mobile.com.backend.service.product.ProductService;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@RequiredArgsConstructor
@Validated
@RestController
@RequestMapping(value = "/api/v1/cart", produces = "application/json")
public class CartController {
    private final CartService cartService;

    // Inject CartService through constructor
    private final LaptopService laptopService;
    private final ProductService productService;

    // API endpoint to add a product to the current user's cart
    @PostMapping("/add-to-cart/{productId}/{userId}")
    public ResponseEntity<String> addToCart(@PathVariable("productId") UUID productId,
            @PathVariable("userId") UUID userId) {
        // UUID currentUserId = SecurityContextUtil.getCurrentUserId();
        System.out.println("API call add to cart " + userId);
        if (userId == null) {
            // Handle the case when the user is not authenticated
            return ResponseEntity.status(401).body("User not authenticated");
        }

        cartService.addProductToCart(userId, productId);

        return ResponseEntity.ok("Product added to cart successfully");
    }

    @GetMapping("/{userId}/all")
    public ResponseEntity<List<LaptopGeneralResponse>> allInCart(@PathVariable("userId") UUID userId) {
        List<LaptopGeneralResponse> laptopGeneralResponses = new ArrayList<LaptopGeneralResponse>();
        List<Product> products = cartService.getAllProductsInCart(userId);
        for (Product laptop : products) {
            UUID currentLaptopId = laptop.getProductId();

            LaptopGeneralResponse laptopGeneralResponse = new LaptopGeneralResponse();
            Product currentProduct = laptop;
            String laptopName = currentProduct.getName();
            String laptopImageLink = currentProduct.getImageLink();
            String laptopPrice = currentProduct.getPrice();
            laptopGeneralResponse.setName(laptopName);
            laptopGeneralResponse.setImageLink(laptopImageLink);
            laptopGeneralResponse.setPrice(laptopPrice);
            laptopGeneralResponse.setProductId(currentLaptopId);
            laptopGeneralResponse.setSalePrice(currentProduct.getPriceDiscount());
            laptopGeneralResponses.add(laptopGeneralResponse);
        }
        return ResponseEntity.ok(laptopGeneralResponses);
    }
}
