package mobile.com.backend.mapper.response.entity.order;

import mobile.com.backend.dto.reponse.order.OrderDetailResponse;
import mobile.com.backend.entity.order.Order;
import mobile.com.backend.mapper.response.entity.GenericMapper;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface OrderDetailMapper extends GenericMapper<OrderDetailResponse, Order> {
}
