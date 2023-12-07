package mobile.com.backend.repository.wishlist;

import java.util.List;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;

import mobile.com.backend.entity.User;
import mobile.com.backend.entity.Wishlist;

public interface WishlistRepository extends JpaRepository<Wishlist, UUID> {
    List<Wishlist> findByUser(User user);
}