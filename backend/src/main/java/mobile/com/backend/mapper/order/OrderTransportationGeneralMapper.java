package mobile.com.backend.mapper.order;

import mobile.com.backend.dto.order.response.OrderTransportationGeneralResponse;
import mobile.com.backend.entity.order.OrderTransportation;
import mobile.com.backend.mapper.GenericMapper;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface OrderTransportationGeneralMapper extends GenericMapper<OrderTransportationGeneralResponse, OrderTransportation> {
}
