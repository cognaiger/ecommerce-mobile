package mobile.com.backend.mapper.response.entity;

import mobile.com.backend.document.ProductDocument;
import mobile.com.backend.entity.Product;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface ProductDocumentMapper extends GenericMapper<ProductDocument, Product> {
}
