package mobile.com.backend.mapper.product;

import mobile.com.backend.dto.product.response.LaptopGeneralResponse;
import mobile.com.backend.entity.product.Laptop;
import mobile.com.backend.mapper.GenericMapper;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface LaptopGeneralMapper extends GenericMapper<LaptopGeneralResponse, Laptop> {
}
