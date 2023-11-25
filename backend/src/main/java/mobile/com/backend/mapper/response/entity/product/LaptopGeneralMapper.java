package mobile.com.backend.mapper.response.entity.product;

import mobile.com.backend.dto.reponse.product.LaptopGeneralResponse;
import mobile.com.backend.entity.product.Laptop;
import mobile.com.backend.mapper.response.entity.GenericMapper;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface LaptopGeneralMapper extends GenericMapper<LaptopGeneralResponse, Laptop> {
}
