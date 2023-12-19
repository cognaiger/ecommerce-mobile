package mobile.com.backend.dto.reponse.product;

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

  private String name = "";

  private UUID productId;

  private String screenSize;

  private String storage;

  private String os;

  private String cpu;

  private String gpu;

  private String ram;

  private LocalDateTime createdAt;

  private LocalDateTime updatedAt;

  private String imageLink = "";

  private String price;
}
