package mobile.com.backend.dto.product.request;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;
import mobile.com.backend.dto.product.request.filter.LaptopAttributeFilter;

import java.util.List;

@JsonInclude(JsonInclude.Include.NON_NULL)
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
@Setter
@Getter
public class LaptopPageRequest {
  private ProductFilterRequest generalFilter;
  private List<LaptopAttributeFilter> attributeFilters;
}
