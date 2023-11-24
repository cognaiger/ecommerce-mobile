package mobile.com.backend.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import mobile.com.backend.common.enums.OrderStatus;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.UpdateTimestamp;

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
  @Column(name = "status")
  private OrderStatus status;

  @CreationTimestamp
  @Column(name = "created_date")
  private LocalDateTime createdDate;

  @UpdateTimestamp
  @Column(name = "updated_date")
  private LocalDateTime updatedDate;
}
