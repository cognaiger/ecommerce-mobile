package mobile.com.backend.entity.order;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import mobile.com.backend.entity.product.Product;
import org.hibernate.annotations.GenericGenerator;

import java.util.UUID;

@Entity
@Table(schema = "ecommerce", name = "order_item")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class OrderItem {

  @Id
  @Column(name = "order_item_id")
  @GeneratedValue(generator = "UUID")
  @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
  private UUID orderItemId;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "order_id")
  private Order order;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "product_id")
  private Product product;

  @Column(name = "quantity")
  private Integer quantity;

}
