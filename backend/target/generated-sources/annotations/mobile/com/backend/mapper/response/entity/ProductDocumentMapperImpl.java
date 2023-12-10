package mobile.com.backend.mapper.response.entity;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import mobile.com.backend.document.ProductDocument;
import mobile.com.backend.entity.product.Product;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-12-10T23:23:43+0700",
    comments = "version: 1.5.2.Final, compiler: javac, environment: Java 21.0.1 (Oracle Corporation)"
)
@Component
public class ProductDocumentMapperImpl implements ProductDocumentMapper {

    @Override
    public ProductDocument toDto(Product entity) {
        if ( entity == null ) {
            return null;
        }

        ProductDocument productDocument = new ProductDocument();

        return productDocument;
    }

    @Override
    public List<ProductDocument> toDto(List<Product> entityList) {
        if ( entityList == null ) {
            return null;
        }

        List<ProductDocument> list = new ArrayList<ProductDocument>( entityList.size() );
        for ( Product product : entityList ) {
            list.add( toDto( product ) );
        }

        return list;
    }

    @Override
    public Product toEntity(ProductDocument dto) {
        if ( dto == null ) {
            return null;
        }

        Product product = new Product();

        return product;
    }

    @Override
    public List<Product> toEntity(List<ProductDocument> dtoList) {
        if ( dtoList == null ) {
            return null;
        }

        List<Product> list = new ArrayList<Product>( dtoList.size() );
        for ( ProductDocument productDocument : dtoList ) {
            list.add( toEntity( productDocument ) );
        }

        return list;
    }
}