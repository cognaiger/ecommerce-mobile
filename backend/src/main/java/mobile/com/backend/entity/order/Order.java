package mobile.com.backend.entity.order;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import mobile.com.backend.common.enums.OrderStatus;
import mobile.com.backend.entity.User;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

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

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "user_id")
  private User user;

  @ManyToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "delivery_address_id")
  private DeliveryAddress deliveryAddress;

  @Enumerated(EnumType.STRING)
  @Column(name = "last_status", columnDefinition = "order_status")
  @JdbcTypeCode(SqlTypes.NAMED_ENUM)
  private OrderStatus lastStatus;

  @OneToMany(mappedBy = "order", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
  private List<OrderTransportation> orderTransportations;

  @OneToMany(mappedBy = "order", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
  private List<OrderItem> orderItems;
}
