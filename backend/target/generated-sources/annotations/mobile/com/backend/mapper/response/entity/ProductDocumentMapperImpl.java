package mobile.com.backend.mapper.response.entity;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import mobile.com.backend.document.ProductDocument;
import mobile.com.backend.entity.product.Product;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-11-25T21:46:12+0700",
    comments = "version: 1.5.2.Final, compiler: javac, environment: Java 21.0.1 (Oracle Corporation)"
)
@Component
public class ProductDocumentMapperImpl implements ProductDocumentMapper {

    @Override
    public ProductDocument toDto(Product entity) {
        if ( entity == null ) {
            return null;
        }

        ProductDocument.ProductDocumentBuilder productDocument = ProductDocument.builder();

        productDocument.productId( entity.getProductId() );
        productDocument.name( entity.getName() );
        productDocument.imageLink( entity.getImageLink() );
        productDocument.description( entity.getDescription() );
        productDocument.price( entity.getPrice() );
        productDocument.priceDiscount( entity.getPriceDiscount() );
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

        product.productId( dto.getProductId() );
        product.name( dto.getName() );
        product.imageLink( dto.getImageLink() );
        product.description( dto.getDescription() );
        product.price( dto.getPrice() );
        product.priceDiscount( dto.getPriceDiscount() );
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
