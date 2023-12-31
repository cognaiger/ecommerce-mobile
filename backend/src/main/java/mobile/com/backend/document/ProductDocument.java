package mobile.com.backend.document;

import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

import java.math.BigDecimal;
import java.util.UUID;

@Document(indexName = "product")
@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ProductDocument {

  @Id
  private UUID productId;

  @Field(type = FieldType.Text, fielddata = true)
  private String name;

//  private Brand brand;

  @Field(type = FieldType.Text, fielddata = true)
  private String imageLink;

  @Field(type = FieldType.Text, fielddata = true)
  private String description;

  private BigDecimal price;

  private BigDecimal priceDiscount;

  private Integer quantity;
}
