package mobile.com.backend.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import javax.validation.constraints.Min;
import java.util.List;
import java.util.UUID;

@Entity
@Table(schema = "ecommerce", name = "cart")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Cart {

  @Id
  @Column(name = "cart_id")
  @GeneratedValue(generator = "UUID")
  @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
  private UUID cartId;

  @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
  @JoinColumn(name = "user_id")
  private User user;

  @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
  @JoinColumn(name = "product_id")
  private Product product;

  @Column(name = "quantity")
  @Min(1)
  private Integer quantity;
}
