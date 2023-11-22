package mobile.com.backend.dto.reponse;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;
import lombok.experimental.SuperBuilder;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.UUID;

@JsonInclude(JsonInclude.Include.NON_NULL)
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class LaptopGeneralResponse {

  private UUID laptopId;

  private ProductGeneralResponse product;

  private String brand;

  private String series;

  private String partNumber;

  private String color;

  private String demand;

  private String cpuSeries;

  private String cpuBrand;

  private String cpuModel;

  private String gpu;

  private String ram;

  private LocalDateTime createdAt;

  private LocalDateTime updatedAt;

}
