package mobile.com.backend.mapper.response.entity.order;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import mobile.com.backend.dto.reponse.order.OrderGeneralResponse;
import mobile.com.backend.entity.order.Order;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-12-10T23:23:43+0700",
    comments = "version: 1.5.2.Final, compiler: javac, environment: Java 21.0.1 (Oracle Corporation)"
)
@Component
public class OrderGeneralMapperImpl implements OrderGeneralMapper {

    @Override
    public OrderGeneralResponse toDto(Order entity) {
        if ( entity == null ) {
            return null;
        }

        OrderGeneralResponse orderGeneralResponse = new OrderGeneralResponse();

        return orderGeneralResponse;
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

        Order order = new Order();

        return order;
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
}
