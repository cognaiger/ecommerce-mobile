package mobile.com.backend.mapper.response.entity;


import mobile.com.backend.dto.reponse.ProductGeneralResponse;
import mobile.com.backend.entity.Product;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", uses = {}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface ProductGeneralMapper extends GenericMapper<ProductGeneralResponse, Product> {
}
