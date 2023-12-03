package mobile.com.backend.mapper.response.entity;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import mobile.com.backend.document.ProductDocument;
import mobile.com.backend.entity.product.Product;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-12-03T17:18:20+0700",
    comments = "version: 1.5.2.Final, compiler: Eclipse JDT (IDE) 3.36.0.v20231030-1524, environment: Java 17.0.9 (Eclipse Adoptium)"
)
@Component
public class ProductDocumentMapperImpl implements ProductDocumentMapper {

    @Override
    public ProductDocument toDto(Product entity) {
        if ( entity == null ) {
            return null;
        }

        ProductDocument.ProductDocumentBuilder productDocument = ProductDocument.builder();

        productDocument.description( entity.getDescription() );
        productDocument.imageLink( entity.getImageLink() );
        productDocument.name( entity.getName() );
        productDocument.price( entity.getPrice() );
        productDocument.priceDiscount( entity.getPriceDiscount() );
        productDocument.productId( entity.getProductId() );
        productDocument.quantity( entity.getQuantity() );

        return productDocument.build();
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

        Product.ProductBuilder product = Product.builder();

        product.description( dto.getDescription() );
        product.imageLink( dto.getImageLink() );
        product.name( dto.getName() );
        product.price( dto.getPrice() );
        product.priceDiscount( dto.getPriceDiscount() );
        product.productId( dto.getProductId() );
        product.quantity( dto.getQuantity() );

        return product.build();
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
