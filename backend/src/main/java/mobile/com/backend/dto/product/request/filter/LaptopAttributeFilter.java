package mobile.com.backend.dto.product.request.filter;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;
import mobile.com.backend.common.enums.filter.LaptopFilter;

@JsonInclude(JsonInclude.Include.NON_NULL)
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
@Setter
@Getter
public class LaptopAttributeFilter extends AttributeFilter {
  private LaptopFilter filter;

  @Override
  public String getFilter() {
    return filter.getValue();
  }

}
