package mobile.com.backend.mapper;

import mobile.com.backend.document.ProductDocument;
import mobile.com.backend.dto.reponse.ProductGeneralResponse;
import mobile.com.backend.entity.Product;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", uses = {}, unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface ProductDocumentMapper extends GenericMapper<ProductDocument, Product> {
}
