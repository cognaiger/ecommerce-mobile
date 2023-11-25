package mobile.com.backend.dto.reponse.order;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;
import mobile.com.backend.common.enums.OrderStatus;

import java.time.LocalDateTime;
import java.util.UUID;

@JsonInclude(JsonInclude.Include.NON_NULL)
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class OrderTransportationGeneralResponse {
  private UUID orderTransportationId;

  private OrderStatus status;

  private LocalDateTime createdAt;

  private LocalDateTime updatedAt;
}
