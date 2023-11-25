package mobile.com.backend.entity.order;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import mobile.com.backend.common.enums.AddressType;
import mobile.com.backend.entity.User;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

import java.util.UUID;

@Entity
@Table(schema = "ecommerce", name = "delivery_address")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class DeliveryAddress {

  @Id
  @Column(name = "delivery_address_id")
  @GeneratedValue(generator = "UUID")
  @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
  private UUID deliveryAddressId;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "user_id")
  private User user;

  @Column(name = "address")
  private String address;

  @Column(name = "type")
  @Enumerated(EnumType.STRING)
  @JdbcTypeCode(SqlTypes.NAMED_ENUM)
  private AddressType type;
}
