package mobile.com.backend.dto.request.product;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;
import lombok.experimental.SuperBuilder;

import java.math.BigDecimal;

@JsonInclude(JsonInclude.Include.NON_NULL)
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class ProductCreateRequest {

  private String name;

  private String imageLink;

  private String description;

  private BigDecimal price;

  private Integer quantity;
}
