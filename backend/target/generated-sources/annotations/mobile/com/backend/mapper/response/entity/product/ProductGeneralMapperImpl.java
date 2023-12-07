package mobile.com.backend.mapper.response.entity.product;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import mobile.com.backend.dto.reponse.product.ProductGeneralResponse;
import mobile.com.backend.entity.product.Product;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-12-05T13:38:05+0700",
    comments = "version: 1.5.2.Final, compiler: Eclipse JDT (IDE) 3.36.0.v20231030-1524, environment: Java 17.0.9 (Eclipse Adoptium)"
)
@Component
public class ProductGeneralMapperImpl implements ProductGeneralMapper {

    @Override
    public ProductGeneralResponse toDto(Product entity) {
        if ( entity == null ) {
            return null;
        }

        ProductGeneralResponse.ProductGeneralResponseBuilder<?, ?> productGeneralResponse = ProductGeneralResponse.builder();

        productGeneralResponse.description( entity.getDescription() );
        productGeneralResponse.imageLink( entity.getImageLink() );
        productGeneralResponse.name( entity.getName() );
        productGeneralResponse.price( entity.getPrice() );
        productGeneralResponse.productId( entity.getProductId() );
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

        product.description( dto.getDescription() );
        product.imageLink( dto.getImageLink() );
        product.name( dto.getName() );
        product.price( dto.getPrice() );
        product.productId( dto.getProductId() );
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
