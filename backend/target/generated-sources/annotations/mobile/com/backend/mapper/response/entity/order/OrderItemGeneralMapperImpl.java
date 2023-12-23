package mobile.com.backend.mapper.response.entity.order;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import mobile.com.backend.dto.reponse.order.OrderItemGeneralResponse;
import mobile.com.backend.entity.order.OrderItem;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-12-23T18:55:00+0700",
    comments = "version: 1.5.2.Final, compiler: javac, environment: Java 17.0.9 (Red Hat, Inc.)"
)
@Component
public class OrderItemGeneralMapperImpl implements OrderItemGeneralMapper {

    @Override
    public OrderItemGeneralResponse toDto(OrderItem entity) {
        if ( entity == null ) {
            return null;
        }

        OrderItemGeneralResponse orderItemGeneralResponse = new OrderItemGeneralResponse();

        return orderItemGeneralResponse;
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

        OrderItem orderItem = new OrderItem();

        return orderItem;
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
}
