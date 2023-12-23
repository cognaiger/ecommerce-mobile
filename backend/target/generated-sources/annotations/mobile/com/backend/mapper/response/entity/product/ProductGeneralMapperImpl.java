package mobile.com.backend.mapper.response.entity.product;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import mobile.com.backend.dto.reponse.product.ProductGeneralResponse;
import mobile.com.backend.entity.product.Product;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-12-23T23:15:28+0700",
    comments = "version: 1.5.2.Final, compiler: javac, environment: Java 17.0.9 (Red Hat, Inc.)"
)
@Component
public class ProductGeneralMapperImpl implements ProductGeneralMapper {

    @Override
    public ProductGeneralResponse toDto(Product entity) {
        if ( entity == null ) {
            return null;
        }

        ProductGeneralResponse productGeneralResponse = new ProductGeneralResponse();

        return productGeneralResponse;
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

        Product product = new Product();

        return product;
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
