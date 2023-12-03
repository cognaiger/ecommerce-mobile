package mobile.com.backend.mapper.response.entity.order;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import mobile.com.backend.dto.reponse.order.OrderTransportationGeneralResponse;
import mobile.com.backend.entity.order.OrderTransportation;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-12-03T17:18:20+0700",
    comments = "version: 1.5.2.Final, compiler: Eclipse JDT (IDE) 3.36.0.v20231030-1524, environment: Java 17.0.9 (Eclipse Adoptium)"
)
@Component
public class OrderTransportationGeneralMapperImpl implements OrderTransportationGeneralMapper {

    @Override
    public OrderTransportationGeneralResponse toDto(OrderTransportation entity) {
        if ( entity == null ) {
            return null;
        }

        OrderTransportationGeneralResponse.OrderTransportationGeneralResponseBuilder<?, ?> orderTransportationGeneralResponse = OrderTransportationGeneralResponse.builder();

        orderTransportationGeneralResponse.createdAt( entity.getCreatedAt() );
        orderTransportationGeneralResponse.orderTransportationId( entity.getOrderTransportationId() );
        orderTransportationGeneralResponse.status( entity.getStatus() );
        orderTransportationGeneralResponse.updatedAt( entity.getUpdatedAt() );

        return orderTransportationGeneralResponse.build();
    }

    @Override
    public List<OrderTransportationGeneralResponse> toDto(List<OrderTransportation> entityList) {
        if ( entityList == null ) {
            return null;
        }

        List<OrderTransportationGeneralResponse> list = new ArrayList<OrderTransportationGeneralResponse>( entityList.size() );
        for ( OrderTransportation orderTransportation : entityList ) {
            list.add( toDto( orderTransportation ) );
        }

        return list;
    }

    @Override
    public OrderTransportation toEntity(OrderTransportationGeneralResponse dto) {
        if ( dto == null ) {
            return null;
        }

        OrderTransportation.OrderTransportationBuilder orderTransportation = OrderTransportation.builder();

        orderTransportation.createdAt( dto.getCreatedAt() );
        orderTransportation.orderTransportationId( dto.getOrderTransportationId() );
        orderTransportation.status( dto.getStatus() );
        orderTransportation.updatedAt( dto.getUpdatedAt() );

        return orderTransportation.build();
    }

    @Override
    public List<OrderTransportation> toEntity(List<OrderTransportationGeneralResponse> dtoList) {
        if ( dtoList == null ) {
            return null;
        }

        List<OrderTransportation> list = new ArrayList<OrderTransportation>( dtoList.size() );
        for ( OrderTransportationGeneralResponse orderTransportationGeneralResponse : dtoList ) {
            list.add( toEntity( orderTransportationGeneralResponse ) );
        }

        return list;
    }
}
