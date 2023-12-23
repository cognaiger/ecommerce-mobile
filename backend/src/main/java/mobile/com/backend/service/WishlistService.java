package mobile.com.backend.service;

import mobile.com.backend.entity.Cart;
import mobile.com.backend.entity.User;
import mobile.com.backend.entity.Wishlist;
import mobile.com.backend.entity.product.Product;
import mobile.com.backend.repository.WishlistRepository;
import mobile.com.backend.service.product.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class WishlistService {

    private final WishlistRepository wishlistRepository;
    private final UserService userService;
    private final ProductService productService;

    @Autowired
    public WishlistService(WishlistRepository wishlistRepository, UserService userService, ProductService productService) {
        this.wishlistRepository = wishlistRepository;
        this.userService = userService;
        this.productService = productService;
    }
    public Product getAllProductsInCart(UUID userId) {
        // Retrieve the user's cart (return an empty list if cart not found)
        Optional<Wishlist> cartOptional = wishlistRepository.findByUserId(userId);
        if (cartOptional.isPresent()) {
            Wishlist cart = cartOptional.get();
            return (cart.getProduct());
        }
        return new Product();
    }

    // Method to add a product to the wishlist of the current user
    public Wishlist addProductToWishlist(UUID userId, UUID productId) {
        // Retrieve the user and product using their respective service methods
        User currentUser = userService.getUserById(userId).orElseThrow(() -> new IllegalArgumentException("User not found"));
        Product productToAdd = productService.findById(productId);

        // Check if the product is already in the user's wishlist
        if (wishlistRepository.existsByUserAndProduct(currentUser, productToAdd)) {
            // Handle the case where the product is already in the wishlist
            throw new IllegalArgumentException("Product is already in the wishlist");
        }

        // Create a new Wishlist entry
        Wishlist newWishlistEntry = new Wishlist();
        newWishlistEntry.setUser(currentUser);
        newWishlistEntry.setProduct(productToAdd);

        // Save the new entry to the wishlist
        return wishlistRepository.save(newWishlistEntry);
    }

    
}
