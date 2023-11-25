package mobile.com.backend.dto.request.product;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;

import java.util.List;

@JsonInclude(JsonInclude.Include.NON_NULL)
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
@Setter
@Getter
public class LaptopPageFilterRequest {

  private List<String> brands;
}
