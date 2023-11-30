package mobile.com.backend.dto.request.product.filter;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;
import mobile.com.backend.common.enums.filter.LaptopFilter;
import mobile.com.backend.dto.request.product.filter.AttributeFilter;

import java.util.List;

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
