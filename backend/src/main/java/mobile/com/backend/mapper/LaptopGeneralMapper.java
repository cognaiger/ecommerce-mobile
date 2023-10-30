package mobile.com.backend.mapper;

import mobile.com.backend.dto.reponse.LaptopGeneralResponse;
import mobile.com.backend.entity.Laptop;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface LaptopGeneralMapper extends GenericMapper<LaptopGeneralResponse, Laptop> {
}
