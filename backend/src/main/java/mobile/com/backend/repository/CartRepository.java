package mobile.com.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import mobile.com.backend.entity.Cart;

import java.util.Optional;
import java.util.UUID;

@Repository
public interface CartRepository extends JpaRepository<Cart, UUID> {

    @Query("SELECT c FROM Cart c WHERE c.user.userId = :userId")
    Optional<Cart> findByUserId(@Param("userId") UUID userId);
}
