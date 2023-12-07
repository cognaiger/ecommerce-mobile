package mobile.com.backend.mapper.response.entity.order;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import mobile.com.backend.dto.reponse.order.OrderItemGeneralResponse;
import mobile.com.backend.dto.reponse.product.ProductGeneralResponse;
import mobile.com.backend.entity.order.OrderItem;
import mobile.com.backend.entity.product.Product;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-12-05T13:38:05+0700",
    comments = "version: 1.5.2.Final, compiler: Eclipse JDT (IDE) 3.36.0.v20231030-1524, environment: Java 17.0.9 (Eclipse Adoptium)"
)
@Component
public class OrderItemGeneralMapperImpl implements OrderItemGeneralMapper {

    @Override
    public OrderItemGeneralResponse toDto(OrderItem entity) {
        if ( entity == null ) {
            return null;
        }

        OrderItemGeneralResponse.OrderItemGeneralResponseBuilder<?, ?> orderItemGeneralResponse = OrderItemGeneralResponse.builder();

        orderItemGeneralResponse.orderItemId( entity.getOrderItemId() );
        orderItemGeneralResponse.product( productToProductGeneralResponse( entity.getProduct() ) );
        orderItemGeneralResponse.quantity( entity.getQuantity() );

        return orderItemGeneralResponse.build();
    }

    @Override
    public List<OrderItemGeneralResponse> toDto(List<OrderItem> entityList) {
        if ( entityList == null ) {
            return null;
        }

        List<OrderItemGeneralResponse> list = new ArrayList<OrderItemGeneralResponse>( entityList.size() );
        for ( OrderItem orderItem : entityList ) {
            list.add( toDto( orderItem ) );
        }

        return list;
    }

    @Override
    public OrderItem toEntity(OrderItemGeneralResponse dto) {
        if ( dto == null ) {
            return null;
        }

        OrderItem.OrderItemBuilder orderItem = OrderItem.builder();

        orderItem.orderItemId( dto.getOrderItemId() );
        orderItem.product( productGeneralResponseToProduct( dto.getProduct() ) );
        orderItem.quantity( dto.getQuantity() );

        return orderItem.build();
    }

    @Override
    public List<OrderItem> toEntity(List<OrderItemGeneralResponse> dtoList) {
        if ( dtoList == null ) {
            return null;
        }

        List<OrderItem> list = new ArrayList<OrderItem>( dtoList.size() );
        for ( OrderItemGeneralResponse orderItemGeneralResponse : dtoList ) {
            list.add( toEntity( orderItemGeneralResponse ) );
        }

        return list;
    }

    protected ProductGeneralResponse productToProductGeneralResponse(Product product) {
        if ( product == null ) {
            return null;
        }

        ProductGeneralResponse.ProductGeneralResponseBuilder<?, ?> productGeneralResponse = ProductGeneralResponse.builder();

        productGeneralResponse.description( product.getDescription() );
        productGeneralResponse.imageLink( product.getImageLink() );
        productGeneralResponse.name( product.getName() );
        productGeneralResponse.price( product.getPrice() );
        productGeneralResponse.productId( product.getProductId() );
        productGeneralResponse.quantity( product.getQuantity() );

        return productGeneralResponse.build();
    }

    protected Product productGeneralResponseToProduct(ProductGeneralResponse productGeneralResponse) {
        if ( productGeneralResponse == null ) {
            return null;
        }

        Product.ProductBuilder product = Product.builder();

        product.description( productGeneralResponse.getDescription() );
        product.imageLink( productGeneralResponse.getImageLink() );
        product.name( productGeneralResponse.getName() );
        product.price( productGeneralResponse.getPrice() );
        product.productId( productGeneralResponse.getProductId() );
        product.quantity( productGeneralResponse.getQuantity() );

        return product.build();
    }
}
