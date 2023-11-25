package mobile.com.backend.dto.reponse.order;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;
import mobile.com.backend.dto.reponse.product.ProductGeneralResponse;

import java.util.UUID;

@JsonInclude(JsonInclude.Include.NON_NULL)
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class OrderItemGeneralResponse {

  private UUID orderItemId;

  private ProductGeneralResponse product;

  private Integer quantity;
}
