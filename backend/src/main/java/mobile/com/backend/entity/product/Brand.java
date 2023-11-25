package mobile.com.backend.entity.product;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(schema = "ecommerce", name = "brand")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Brand {

  @Id
  @Column(name = "brand_name")
  private String brandName;

  @Column(name = "image_link")
  private String imageLink;
}
