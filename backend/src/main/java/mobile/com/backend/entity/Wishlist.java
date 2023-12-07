package mobile.com.backend.entity;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import mobile.com.backend.entity.product.Product;

import org.hibernate.annotations.GenericGenerator;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(schema = "ecommerce", name = "wishlist")
public class Wishlist {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID wishlistId;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    // getters and setters
}
