package mobile.com.backend.mapper;

import mobile.com.backend.dto.reponse.LaptopGeneralResponse;
import mobile.com.backend.entity.Laptop;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", uses = {}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface LaptopGeneralMapper extends GenericMapper<LaptopGeneralResponse, Laptop> {
}
