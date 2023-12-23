package mobile.com.backend.mapper.response.entity.product;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import mobile.com.backend.dto.reponse.product.LaptopGeneralResponse;
import mobile.com.backend.entity.product.Laptop;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-12-23T22:10:01+0700",
    comments = "version: 1.5.2.Final, compiler: javac, environment: Java 17.0.9 (Red Hat, Inc.)"
)
@Component
public class LaptopGeneralMapperImpl implements LaptopGeneralMapper {

    @Override
    public LaptopGeneralResponse toDto(Laptop entity) {
        if ( entity == null ) {
            return null;
        }

        LaptopGeneralResponse laptopGeneralResponse = new LaptopGeneralResponse();

        return laptopGeneralResponse;
    }

    @Override
    public List<LaptopGeneralResponse> toDto(List<Laptop> entityList) {
        if ( entityList == null ) {
            return null;
        }

        List<LaptopGeneralResponse> list = new ArrayList<LaptopGeneralResponse>( entityList.size() );
        for ( Laptop laptop : entityList ) {
            list.add( toDto( laptop ) );
        }

        return list;
    }

    @Override
    public Laptop toEntity(LaptopGeneralResponse dto) {
        if ( dto == null ) {
            return null;
        }

        Laptop laptop = new Laptop();

        return laptop;
    }

    @Override
    public List<Laptop> toEntity(List<LaptopGeneralResponse> dtoList) {
        if ( dtoList == null ) {
            return null;
        }

        List<Laptop> list = new ArrayList<Laptop>( dtoList.size() );
        for ( LaptopGeneralResponse laptopGeneralResponse : dtoList ) {
            list.add( toEntity( laptopGeneralResponse ) );
        }

        return list;
    }
}
