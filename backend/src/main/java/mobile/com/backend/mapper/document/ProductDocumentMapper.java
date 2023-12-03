package mobile.com.backend.mapper.document;

import mobile.com.backend.document.ProductDocument;
import mobile.com.backend.entity.product.Product;
import mobile.com.backend.mapper.GenericMapper;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", uses = {}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface ProductDocumentMapper extends GenericMapper<ProductDocument, Product> {
}
