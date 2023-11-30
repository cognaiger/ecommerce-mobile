package mobile.com.backend.dto.request.product.filter;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;
import mobile.com.backend.common.enums.filter.ProductFilter;

@JsonInclude(JsonInclude.Include.NON_NULL)
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
@Setter
@Getter
public class ProductAttributeFilter extends AttributeFilter{

  ProductFilter filter;

  @Override
  public String getFilter() {
    return filter.getValue();
  }
}
