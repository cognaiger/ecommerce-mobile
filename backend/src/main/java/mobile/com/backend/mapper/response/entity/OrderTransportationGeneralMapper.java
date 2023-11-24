package mobile.com.backend.mapper.response.entity;

import mobile.com.backend.dto.reponse.OrderTransportationGeneralResponse;
import mobile.com.backend.entity.OrderTransportation;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface OrderTransportationGeneralMapper extends GenericMapper<OrderTransportationGeneralResponse, OrderTransportation>{
}
