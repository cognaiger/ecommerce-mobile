package mobile.com.backend.mapper.response.entity.product;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.processing.Generated;
import mobile.com.backend.dto.reponse.product.LaptopGeneralResponse;
import mobile.com.backend.entity.product.Laptop;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-12-07T10:13:35+0700",
    comments = "version: 1.5.2.Final, compiler: Eclipse JDT (IDE) 3.36.0.v20231030-1524, environment: Java 17.0.9 (Eclipse Adoptium)"
)
@Component
public class LaptopGeneralMapperImpl implements LaptopGeneralMapper {

    @Override
    public LaptopGeneralResponse toDto(Laptop entity) {
        if ( entity == null ) {
            return null;
        }

        LaptopGeneralResponse.LaptopGeneralResponseBuilder<?, ?> laptopGeneralResponse = LaptopGeneralResponse.builder();

        laptopGeneralResponse.cpu( entity.getCpu() );
        laptopGeneralResponse.createdAt( entity.getCreatedAt() );
        laptopGeneralResponse.gpu( entity.getGpu() );
        laptopGeneralResponse.os( entity.getOs() );
        laptopGeneralResponse.productId( entity.getProductId() );
        laptopGeneralResponse.ram( entity.getRam() );
        laptopGeneralResponse.screenSize( entity.getScreenSize() );
        laptopGeneralResponse.storage( entity.getStorage() );
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

        laptop.cpu( dto.getCpu() );
        laptop.createdAt( dto.getCreatedAt() );
        laptop.gpu( dto.getGpu() );
        laptop.os( dto.getOs() );
        laptop.productId( dto.getProductId() );
        laptop.ram( dto.getRam() );
        laptop.screenSize( dto.getScreenSize() );
        laptop.storage( dto.getStorage() );
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
