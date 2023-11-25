package mobile.com.backend.mapper.response.entity;

import mobile.com.backend.dto.reponse.OrderDetailResponse;
import mobile.com.backend.entity.Order;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", uses = {}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface OrderDetailMapper extends GenericMapper<OrderDetailResponse, Order>{
}
