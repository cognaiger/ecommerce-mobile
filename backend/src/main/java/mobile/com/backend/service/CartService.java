package mobile.com.backend.service;
import java.util.HashSet;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.HashSet;
import mobile.com.backend.entity.Cart;
import mobile.com.backend.entity.User;
import mobile.com.backend.entity.product.Product;
import mobile.com.backend.repository.CartRepository;
import mobile.com.backend.repository.product.ProductRepository;
import java.util.Date;
@Service
public class CartService {

    private final CartRepository cartRepository;
    private final ProductRepository productRepository;

    // Inject repositories through constructor

    public CartService(CartRepository cartRepository, ProductRepository productRepository) {
        this.cartRepository = cartRepository;
        this.productRepository = productRepository;
    }

    public void addProductToCart(UUID userId, UUID productId) {
        // Retrieve the user's cart (create a new cart if not exists)
        Cart cart = cartRepository.findByUserId(userId).orElseGet(() -> {
            User user = new User();
            user.setUserId(userId);
            return new Cart(user, new HashSet<>()); // Fix here, removed unnecessary repository call
        });

        // Retrieve the product
        Product product = productRepository.findById(productId)
                .orElseThrow(() -> new RuntimeException("Product not found"));

        // Add the product to the cart
        cart.getProducts().add(product);
        Date createdAt = new Date(System.currentTimeMillis());
        Date updatedAt = new Date(System.currentTimeMillis());
        cart.setCreatedAt(createdAt);
        cart.setUpdatedAt(updatedAt);
        cartRepository.save(cart);
    }
}
