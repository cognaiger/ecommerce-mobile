package mobile.com.backend.mapper.response.entity.product;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import mobile.com.backend.dto.reponse.product.ProductGeneralResponse;
import mobile.com.backend.entity.product.Product;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-11-25T21:09:04+0700",
    comments = "version: 1.5.2.Final, compiler: javac, environment: Java 21.0.1 (Oracle Corporation)"
)
@Component
public class ProductGeneralMapperImpl implements ProductGeneralMapper {

    @Override
    public ProductGeneralResponse toDto(Product entity) {
        if ( entity == null ) {
            return null;
        }

        ProductGeneralResponse.ProductGeneralResponseBuilder<?, ?> productGeneralResponse = ProductGeneralResponse.builder();

        productGeneralResponse.productId( entity.getProductId() );
        productGeneralResponse.name( entity.getName() );
        productGeneralResponse.imageLink( entity.getImageLink() );
        productGeneralResponse.description( entity.getDescription() );
        productGeneralResponse.price( entity.getPrice() );
        productGeneralResponse.quantity( entity.getQuantity() );

        return productGeneralResponse.build();
    }

    @Override
    public List<ProductGeneralResponse> toDto(List<Product> entityList) {
        if ( entityList == null ) {
            return null;
        }

        List<ProductGeneralResponse> list = new ArrayList<ProductGeneralResponse>( entityList.size() );
        for ( Product product : entityList ) {
            list.add( toDto( product ) );
        }

        return list;
    }

    @Override
    public Product toEntity(ProductGeneralResponse dto) {
        if ( dto == null ) {
            return null;
        }

        Product.ProductBuilder product = Product.builder();

        product.productId( dto.getProductId() );
        product.name( dto.getName() );
        product.imageLink( dto.getImageLink() );
        product.description( dto.getDescription() );
        product.price( dto.getPrice() );
        product.quantity( dto.getQuantity() );

        return product.build();
    }

    @Override
    public List<Product> toEntity(List<ProductGeneralResponse> dtoList) {
        if ( dtoList == null ) {
            return null;
        }

        List<Product> list = new ArrayList<Product>( dtoList.size() );
        for ( ProductGeneralResponse productGeneralResponse : dtoList ) {
            list.add( toEntity( productGeneralResponse ) );
        }

        return list;
    }
}
