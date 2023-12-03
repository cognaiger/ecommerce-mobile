package mobile.com.backend.dto.product.request;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;
import mobile.com.backend.common.enums.filter.SortBy;
import mobile.com.backend.common.enums.filter.SortDirection;

@JsonInclude(JsonInclude.Include.NON_NULL)
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
@Setter
@Getter
public class ProductPagingRequest {
  protected Integer page;
  protected Integer size;
  protected SortDirection sortDirection;
  protected SortBy sortBy;
}
