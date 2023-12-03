package mobile.com.backend.dto.product.request;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;
import mobile.com.backend.common.enums.filter.SortBy;
import mobile.com.backend.common.enums.filter.SortDirection;
import mobile.com.backend.dto.product.request.filter.ProductAttributeFilter;

import java.util.List;


@JsonInclude(JsonInclude.Include.NON_NULL)
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
@Setter
@Getter
public class ProductFilterRequest {
  protected Integer page;
  protected Integer size;
  protected SortDirection sortDirection;
  protected SortBy sortBy;
  private List<ProductAttributeFilter> filters;
}
