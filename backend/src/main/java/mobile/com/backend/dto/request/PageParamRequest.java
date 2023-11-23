package mobile.com.backend.dto.request;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;

import javax.validation.constraints.Min;

@JsonInclude(JsonInclude.Include.NON_NULL)
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
@Setter
@Getter
public class PageParamRequest {

  @Min(0)
  private Integer pageNumber = 0;

  @Min(1)
  private Integer pageSize = 10;

  private String sortBy;

  private String sortDirection;
}
