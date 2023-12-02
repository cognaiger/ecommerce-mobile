package mobile.com.backend.dto.reponse.order;

import java.util.Date;
import java.util.UUID;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import mobile.com.backend.common.enums.OrderStatus;
import mobile.com.backend.entity.order.DeliveryAddress;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderForAdminPage {
    private UUID orderId;
   
    private OrderStatus lastStatus;
    private DeliveryAddress deliveryAddress;
}
