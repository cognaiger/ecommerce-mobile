package mobile.com.backend.dto.order.response;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;
import mobile.com.backend.common.enums.OrderStatus;

import java.util.List;
import java.util.UUID;

@JsonInclude(JsonInclude.Include.NON_NULL)
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class OrderDetailResponse {
  private UUID orderId;

  private UUID userId;

  private OrderStatus lastStatus;

  private List<OrderTransportationGeneralResponse> orderTransportations;

  private List<OrderItemGeneralResponse> orderItems;
}
