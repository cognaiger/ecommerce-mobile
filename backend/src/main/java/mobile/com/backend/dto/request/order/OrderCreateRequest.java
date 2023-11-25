package mobile.com.backend.dto.request.order;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;
import lombok.experimental.SuperBuilder;

import java.util.List;
import java.util.UUID;

@JsonInclude(JsonInclude.Include.NON_NULL)
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class OrderCreateRequest {
  private List<OrderItemCreateRequest> orderItems;
  private UUID deliveryAddressId;
}
