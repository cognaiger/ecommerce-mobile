package mobile.com.backend.mapper.response.entity.order;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import mobile.com.backend.dto.reponse.order.OrderGeneralResponse;
import mobile.com.backend.dto.reponse.order.OrderItemGeneralResponse;
import mobile.com.backend.dto.reponse.product.ProductGeneralResponse;
import mobile.com.backend.entity.order.Order;
import mobile.com.backend.entity.order.OrderItem;
import mobile.com.backend.entity.product.Product;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-12-05T13:38:05+0700",
    comments = "version: 1.5.2.Final, compiler: Eclipse JDT (IDE) 3.36.0.v20231030-1524, environment: Java 17.0.9 (Eclipse Adoptium)"
)
@Component
public class OrderGeneralMapperImpl implements OrderGeneralMapper {

    @Override
    public OrderGeneralResponse toDto(Order entity) {
        if ( entity == null ) {
            return null;
        }

        OrderGeneralResponse.OrderGeneralResponseBuilder<?, ?> orderGeneralResponse = OrderGeneralResponse.builder();

        orderGeneralResponse.lastStatus( entity.getLastStatus() );
        orderGeneralResponse.orderId( entity.getOrderId() );
        orderGeneralResponse.orderItems( orderItemListToOrderItemGeneralResponseList( entity.getOrderItems() ) );

        return orderGeneralResponse.build();
    }

    @Override
    public List<OrderGeneralResponse> toDto(List<Order> entityList) {
        if ( entityList == null ) {
            return null;
        }

        List<OrderGeneralResponse> list = new ArrayList<OrderGeneralResponse>( entityList.size() );
        for ( Order order : entityList ) {
            list.add( toDto( order ) );
        }

        return list;
    }

    @Override
    public Order toEntity(OrderGeneralResponse dto) {
        if ( dto == null ) {
            return null;
        }

        Order.OrderBuilder order = Order.builder();

        order.lastStatus( dto.getLastStatus() );
        order.orderId( dto.getOrderId() );
        order.orderItems( orderItemGeneralResponseListToOrderItemList( dto.getOrderItems() ) );

        return order.build();
    }

    @Override
    public List<Order> toEntity(List<OrderGeneralResponse> dtoList) {
        if ( dtoList == null ) {
            return null;
        }

        List<Order> list = new ArrayList<Order>( dtoList.size() );
        for ( OrderGeneralResponse orderGeneralResponse : dtoList ) {
            list.add( toEntity( orderGeneralResponse ) );
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

    protected OrderItemGeneralResponse orderItemToOrderItemGeneralResponse(OrderItem orderItem) {
        if ( orderItem == null ) {
            return null;
        }

        OrderItemGeneralResponse.OrderItemGeneralResponseBuilder<?, ?> orderItemGeneralResponse = OrderItemGeneralResponse.builder();

        orderItemGeneralResponse.orderItemId( orderItem.getOrderItemId() );
        orderItemGeneralResponse.product( productToProductGeneralResponse( orderItem.getProduct() ) );
        orderItemGeneralResponse.quantity( orderItem.getQuantity() );

        return orderItemGeneralResponse.build();
    }

    protected List<OrderItemGeneralResponse> orderItemListToOrderItemGeneralResponseList(List<OrderItem> list) {
        if ( list == null ) {
            return null;
        }

        List<OrderItemGeneralResponse> list1 = new ArrayList<OrderItemGeneralResponse>( list.size() );
        for ( OrderItem orderItem : list ) {
            list1.add( orderItemToOrderItemGeneralResponse( orderItem ) );
        }

        return list1;
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

    protected OrderItem orderItemGeneralResponseToOrderItem(OrderItemGeneralResponse orderItemGeneralResponse) {
        if ( orderItemGeneralResponse == null ) {
            return null;
        }

        OrderItem.OrderItemBuilder orderItem = OrderItem.builder();

        orderItem.orderItemId( orderItemGeneralResponse.getOrderItemId() );
        orderItem.product( productGeneralResponseToProduct( orderItemGeneralResponse.getProduct() ) );
        orderItem.quantity( orderItemGeneralResponse.getQuantity() );

        return orderItem.build();
    }

    protected List<OrderItem> orderItemGeneralResponseListToOrderItemList(List<OrderItemGeneralResponse> list) {
        if ( list == null ) {
            return null;
        }

        List<OrderItem> list1 = new ArrayList<OrderItem>( list.size() );
        for ( OrderItemGeneralResponse orderItemGeneralResponse : list ) {
            list1.add( orderItemGeneralResponseToOrderItem( orderItemGeneralResponse ) );
        }

        return list1;
    }
}
