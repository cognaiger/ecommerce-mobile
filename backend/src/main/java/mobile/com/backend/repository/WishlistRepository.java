package mobile.com.backend.repository;

import mobile.com.backend.entity.Cart;
import mobile.com.backend.entity.User;
import mobile.com.backend.entity.Wishlist;
import mobile.com.backend.entity.product.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;
import java.util.UUID;

public interface WishlistRepository extends JpaRepository<Wishlist, UUID> {

    boolean existsByUserAndProduct(User user, Product product);

    @Query("SELECT w FROM Wishlist w WHERE w.user.userId = :userId")
    Optional<Wishlist> findByUserId(@Param("userId") UUID userId);

}
