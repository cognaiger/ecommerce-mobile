package mobile.com.backend.entity.order;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import mobile.com.backend.common.enums.OrderStatus;
import mobile.com.backend.entity.order.Order;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.annotations.UpdateTimestamp;
import org.hibernate.type.SqlTypes;

import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Table(schema = "ecommerce", name = "order_transportation")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class OrderTransportation {

  @Id
  @Column(name = "order_transportation_id")
  @GeneratedValue(generator = "UUID")
  @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
  private UUID orderTransportationId;

  @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
  @JoinColumn(name = "order_id")
  private Order order;

  @Enumerated(EnumType.STRING)
  @Column(name = "status", columnDefinition = "order_status")
  @JdbcTypeCode(SqlTypes.NAMED_ENUM)
  private OrderStatus status;

  @CreationTimestamp
  @Column(name = "created_at")
  private LocalDateTime createdAt;

  @UpdateTimestamp
  @Column(name = "updated_at")
  private LocalDateTime updatedAt;
}
