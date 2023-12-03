package mobile.com.backend.mapper.order;

import mobile.com.backend.dto.order.response.OrderGeneralResponse;
import mobile.com.backend.entity.order.Order;
import mobile.com.backend.mapper.GenericMapper;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", uses = {}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface OrderGeneralMapper extends GenericMapper<OrderGeneralResponse, Order> {
}
