package mobile.com.backend.mapper.response.entity.product;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import mobile.com.backend.dto.reponse.product.LaptopGeneralResponse;
import mobile.com.backend.entity.product.Laptop;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-11-25T21:09:04+0700",
    comments = "version: 1.5.2.Final, compiler: javac, environment: Java 21.0.1 (Oracle Corporation)"
)
@Component
public class LaptopGeneralMapperImpl implements LaptopGeneralMapper {

    @Override
    public LaptopGeneralResponse toDto(Laptop entity) {
        if ( entity == null ) {
            return null;
        }

        LaptopGeneralResponse.LaptopGeneralResponseBuilder<?, ?> laptopGeneralResponse = LaptopGeneralResponse.builder();

        laptopGeneralResponse.productId( entity.getProductId() );
        laptopGeneralResponse.screenSize( entity.getScreenSize() );
        laptopGeneralResponse.storage( entity.getStorage() );
        laptopGeneralResponse.os( entity.getOs() );
        laptopGeneralResponse.cpu( entity.getCpu() );
        laptopGeneralResponse.gpu( entity.getGpu() );
        laptopGeneralResponse.ram( entity.getRam() );
        laptopGeneralResponse.createdAt( entity.getCreatedAt() );
        laptopGeneralResponse.updatedAt( entity.getUpdatedAt() );

        return laptopGeneralResponse.build();
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

        Laptop.LaptopBuilder laptop = Laptop.builder();

        laptop.productId( dto.getProductId() );
        laptop.screenSize( dto.getScreenSize() );
        laptop.storage( dto.getStorage() );
        laptop.os( dto.getOs() );
        laptop.cpu( dto.getCpu() );
        laptop.gpu( dto.getGpu() );
        laptop.ram( dto.getRam() );
        laptop.createdAt( dto.getCreatedAt() );
        laptop.updatedAt( dto.getUpdatedAt() );

        return laptop.build();
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
