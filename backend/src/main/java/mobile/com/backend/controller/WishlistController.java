package mobile.com.backend.controller;

import lombok.RequiredArgsConstructor;
import mobile.com.backend.dto.reponse.product.LaptopGeneralResponse;
import mobile.com.backend.dto.request.product.LaptopPageRequest;
import mobile.com.backend.entity.product.Product;
import mobile.com.backend.security.utils.SecurityContextUtil;
import mobile.com.backend.service.CartService;
import mobile.com.backend.service.product.LaptopService;
import mobile.com.backend.service.product.ProductService;
import mobile.com.backend.service.WishlistService;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@RequiredArgsConstructor
@Validated
@RestController
@RequestMapping(value = "/api/v1/wishlist", produces = "application/json")
public class WishlistController {

    private final WishlistService wishlistService;

    @PostMapping("/{userId}/{productId}")
    public ResponseEntity<String> addToWishlist(
            @PathVariable("userId") UUID userId,
            @PathVariable("productId") UUID productId) {
        try {
            wishlistService.addProductToWishlist(userId, productId);
            return ResponseEntity.ok("Product added to wishlist successfully.");
        } catch (IllegalArgumentException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @GetMapping("/{userId}")
    public ResponseEntity<List<LaptopGeneralResponse>> getAll(@PathVariable("userId") UUID userId) {
        List<LaptopGeneralResponse> laptopGeneralResponses = new ArrayList<LaptopGeneralResponse>();
        List<Product> products = new ArrayList<>();
        products.add(wishlistService.getAllProductsInCart(userId));
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
