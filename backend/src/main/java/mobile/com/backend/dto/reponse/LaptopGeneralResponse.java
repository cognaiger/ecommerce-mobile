package mobile.com.backend.dto.reponse;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
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
  private UUID id;

  private String name;

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

  private String screenSize;

  private String storage;

  private String storageGateway;

  private String m2Support;

  private String outputPort;

  private String connectPort;

  private String wirelessConnect;

  private String keyBoard;

  private String os;

  private String size;

  private String battery;

  private BigDecimal weight;

  private String ledIndicator;

  private String accessoriesIncluded;

  private BigDecimal price;

  private Integer quantity;

  private String image;

  private String description;

  private LocalDateTime createdAt;

  private LocalDateTime updatedAt;
}
