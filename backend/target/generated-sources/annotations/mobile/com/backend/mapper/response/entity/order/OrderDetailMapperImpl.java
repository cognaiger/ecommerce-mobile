package mobile.com.backend.mapper.response.entity.order;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import mobile.com.backend.dto.reponse.order.OrderDetailResponse;
import mobile.com.backend.dto.reponse.order.OrderItemGeneralResponse;
import mobile.com.backend.dto.reponse.order.OrderTransportationGeneralResponse;
import mobile.com.backend.dto.reponse.product.ProductGeneralResponse;
import mobile.com.backend.entity.order.Order;
import mobile.com.backend.entity.order.OrderItem;
import mobile.com.backend.entity.order.OrderTransportation;
import mobile.com.backend.entity.product.Product;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-11-25T21:09:03+0700",
    comments = "version: 1.5.2.Final, compiler: javac, environment: Java 21.0.1 (Oracle Corporation)"
)
@Component
public class OrderDetailMapperImpl implements OrderDetailMapper {

    @Override
    public OrderDetailResponse toDto(Order entity) {
        if ( entity == null ) {
            return null;
        }

        OrderDetailResponse.OrderDetailResponseBuilder<?, ?> orderDetailResponse = OrderDetailResponse.builder();

        orderDetailResponse.orderId( entity.getOrderId() );
        orderDetailResponse.lastStatus( entity.getLastStatus() );
        orderDetailResponse.orderTransportations( orderTransportationListToOrderTransportationGeneralResponseList( entity.getOrderTransportations() ) );
        orderDetailResponse.orderItems( orderItemListToOrderItemGeneralResponseList( entity.getOrderItems() ) );

        return orderDetailResponse.build();
    }

    @Override
    public List<OrderDetailResponse> toDto(List<Order> entityList) {
        if ( entityList == null ) {
            return null;
        }

        List<OrderDetailResponse> list = new ArrayList<OrderDetailResponse>( entityList.size() );
        for ( Order order : entityList ) {
            list.add( toDto( order ) );
        }

        return list;
    }

    @Override
    public Order toEntity(OrderDetailResponse dto) {
        if ( dto == null ) {
            return null;
        }

        Order.OrderBuilder order = Order.builder();

        order.orderId( dto.getOrderId() );
        order.lastStatus( dto.getLastStatus() );
        order.orderTransportations( orderTransportationGeneralResponseListToOrderTransportationList( dto.getOrderTransportations() ) );
        order.orderItems( orderItemGeneralResponseListToOrderItemList( dto.getOrderItems() ) );

        return order.build();
    }

    @Override
    public List<Order> toEntity(List<OrderDetailResponse> dtoList) {
        if ( dtoList == null ) {
            return null;
        }

        List<Order> list = new ArrayList<Order>( dtoList.size() );
        for ( OrderDetailResponse orderDetailResponse : dtoList ) {
            list.add( toEntity( orderDetailResponse ) );
        }

        return list;
    }

    protected OrderTransportationGeneralResponse orderTransportationToOrderTransportationGeneralResponse(OrderTransportation orderTransportation) {
        if ( orderTransportation == null ) {
            return null;
        }

        OrderTransportationGeneralResponse.OrderTransportationGeneralResponseBuilder<?, ?> orderTransportationGeneralResponse = OrderTransportationGeneralResponse.builder();

        orderTransportationGeneralResponse.orderTransportationId( orderTransportation.getOrderTransportationId() );
        orderTransportationGeneralResponse.status( orderTransportation.getStatus() );
        orderTransportationGeneralResponse.createdAt( orderTransportation.getCreatedAt() );
        orderTransportationGeneralResponse.updatedAt( orderTransportation.getUpdatedAt() );

        return orderTransportationGeneralResponse.build();
    }

    protected List<OrderTransportationGeneralResponse> orderTransportationListToOrderTransportationGeneralResponseList(List<OrderTransportation> list) {
        if ( list == null ) {
            return null;
        }

        List<OrderTransportationGeneralResponse> list1 = new ArrayList<OrderTransportationGeneralResponse>( list.size() );
        for ( OrderTransportation orderTransportation : list ) {
            list1.add( orderTransportationToOrderTransportationGeneralResponse( orderTransportation ) );
        }

        return list1;
    }

    protected ProductGeneralResponse productToProductGeneralResponse(Product product) {
        if ( product == null ) {
            return null;
        }

        ProductGeneralResponse.ProductGeneralResponseBuilder<?, ?> productGeneralResponse = ProductGeneralResponse.builder();

        productGeneralResponse.productId( product.getProductId() );
        productGeneralResponse.name( product.getName() );
        productGeneralResponse.imageLink( product.getImageLink() );
        productGeneralResponse.description( product.getDescription() );
        productGeneralResponse.price( product.getPrice() );
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

    protected OrderTransportation orderTransportationGeneralResponseToOrderTransportation(OrderTransportationGeneralResponse orderTransportationGeneralResponse) {
        if ( orderTransportationGeneralResponse == null ) {
            return null;
        }

        OrderTransportation.OrderTransportationBuilder orderTransportation = OrderTransportation.builder();

        orderTransportation.orderTransportationId( orderTransportationGeneralResponse.getOrderTransportationId() );
        orderTransportation.status( orderTransportationGeneralResponse.getStatus() );
        orderTransportation.createdAt( orderTransportationGeneralResponse.getCreatedAt() );
        orderTransportation.updatedAt( orderTransportationGeneralResponse.getUpdatedAt() );

        return orderTransportation.build();
    }

    protected List<OrderTransportation> orderTransportationGeneralResponseListToOrderTransportationList(List<OrderTransportationGeneralResponse> list) {
        if ( list == null ) {
            return null;
        }

        List<OrderTransportation> list1 = new ArrayList<OrderTransportation>( list.size() );
        for ( OrderTransportationGeneralResponse orderTransportationGeneralResponse : list ) {
            list1.add( orderTransportationGeneralResponseToOrderTransportation( orderTransportationGeneralResponse ) );
        }

        return list1;
    }

    protected Product productGeneralResponseToProduct(ProductGeneralResponse productGeneralResponse) {
        if ( productGeneralResponse == null ) {
            return null;
        }

        Product.ProductBuilder product = Product.builder();

        product.productId( productGeneralResponse.getProductId() );
        product.name( productGeneralResponse.getName() );
        product.imageLink( productGeneralResponse.getImageLink() );
        product.description( productGeneralResponse.getDescription() );
        product.price( productGeneralResponse.getPrice() );
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
