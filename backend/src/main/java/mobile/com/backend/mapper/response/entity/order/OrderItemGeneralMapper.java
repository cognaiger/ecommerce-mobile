package mobile.com.backend.mapper.response.entity.order;

import mobile.com.backend.dto.reponse.order.OrderItemGeneralResponse;
import mobile.com.backend.entity.order.OrderItem;
import mobile.com.backend.mapper.response.entity.GenericMapper;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", uses = {}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface OrderItemGeneralMapper extends GenericMapper<OrderItemGeneralResponse, OrderItem> {
}
