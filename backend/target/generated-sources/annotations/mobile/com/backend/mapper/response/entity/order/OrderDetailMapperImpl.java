package mobile.com.backend.mapper.response.entity.order;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import mobile.com.backend.dto.reponse.order.OrderDetailResponse;
import mobile.com.backend.entity.order.Order;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-12-23T22:10:01+0700",
    comments = "version: 1.5.2.Final, compiler: javac, environment: Java 17.0.9 (Red Hat, Inc.)"
)
@Component
public class OrderDetailMapperImpl implements OrderDetailMapper {

    @Override
    public OrderDetailResponse toDto(Order entity) {
        if ( entity == null ) {
            return null;
        }

        OrderDetailResponse orderDetailResponse = new OrderDetailResponse();

        return orderDetailResponse;
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

        Order order = new Order();

        return order;
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
}
