package mobile.com.backend.controller;
import lombok.RequiredArgsConstructor;
import mobile.com.backend.dto.reponse.product.LaptopGeneralResponse;
import mobile.com.backend.dto.reponse.product.ProductGeneralResponse;
import mobile.com.backend.dto.request.product.LaptopPageRequest;
import mobile.com.backend.security.utils.SecurityContextUtil;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.service.CartService;
import mobile.com.backend.service.product.LaptopService;

import java.util.UUID;

import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
@Validated
@RestController
@RequestMapping(value = "/api/v1/cart", produces = "application/json")
public class CartController {
    private final CartService cartService;

    // Inject CartService through constructor

    public CartController(CartService cartService) {
        this.cartService = cartService;
    }

    // API endpoint to add a product to the current user's cart
    @PostMapping("/add-to-cart/{productId}/{userId}")
    public ResponseEntity<String> addToCart(@PathVariable("productId") UUID productId, @PathVariable("userId") UUID userId) {
        // UUID currentUserId = SecurityContextUtil.getCurrentUserId();
        System.out.println("API call add to cart " + userId );
        if (userId == null) {
            // Handle the case when the user is not authenticated
            return ResponseEntity.status(401).body("User not authenticated");
        }

        cartService.addProductToCart(userId, productId);

        return ResponseEntity.ok("Product added to cart successfully");
    }
}
