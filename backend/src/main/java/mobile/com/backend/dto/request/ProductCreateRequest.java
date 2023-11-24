package mobile.com.backend.dto.request;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;

import java.math.BigDecimal;

@JsonInclude(JsonInclude.Include.NON_NULL)
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
@Setter
@Getter
public class ProductCreateRequest {

  private String name;

  private String imageLink;

  private String description;

  private BigDecimal price;

  private Integer quantity;
}
