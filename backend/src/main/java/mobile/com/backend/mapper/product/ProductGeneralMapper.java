package mobile.com.backend.mapper.product;


import mobile.com.backend.dto.product.response.ProductGeneralResponse;
import mobile.com.backend.entity.product.Product;
import mobile.com.backend.mapper.GenericMapper;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface ProductGeneralMapper extends GenericMapper<ProductGeneralResponse, Product> {
}
