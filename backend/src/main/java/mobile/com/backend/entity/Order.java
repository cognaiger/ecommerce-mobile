package mobile.com.backend.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import mobile.com.backend.common.enums.OrderStatus;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

import javax.validation.constraints.Min;
import java.util.List;
import java.util.UUID;

@Entity
@Table(schema = "ecommerce", name = "order")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Order {

  @Id
  @Column(name = "order_id")
  @GeneratedValue(generator = "UUID")
  @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
  private UUID orderId;

  @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
  @JoinColumn(name = "user_id")
  private User user;

  @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
  @JoinColumn(name = "product_id")
  private Product product;

  @Column(name = "quantity")
  @Min(1)
  private Integer quantity;

  @Enumerated(EnumType.STRING)
  @Column(name = "last_status", columnDefinition = "order_status")
  @JdbcTypeCode(SqlTypes.NAMED_ENUM)
  private OrderStatus lastStatus;

  @OneToMany(mappedBy = "order", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
  private List<OrderTransportation> orderTransportations;
}
