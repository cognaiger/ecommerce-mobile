package mobile.com.backend.entity.product;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import mobile.com.backend.entity.product.Brand;
import org.hibernate.annotations.GenericGenerator;

import java.math.BigDecimal;
import java.util.UUID;

@Entity
@Table(schema = "ecommerce", name = "product")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Product {

  @Id
  @Column(name = "product_id")
  @GeneratedValue(generator = "UUID")
  @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
  private UUID productId;

  @Column(name = "name")
  private String name;

  @ManyToOne(fetch = FetchType.EAGER)
  @JoinColumn(name = "brand_name")
  private Brand brand;

  @Column(name = "image_link")
  private String imageLink;

  @Column(name = "description")
  private String description;

  @Column(name = "price")
  private BigDecimal price;

  @Column(name = "price_discount")
  private BigDecimal priceDiscount;

  @Column(name = "quantity")
  private Integer quantity;


}
