package mobile.com.backend.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.UpdateTimestamp;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Table(schema = "product", name = "laptop")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Laptop {

  @Id
  @Column(name = "id")
  @GeneratedValue(generator = "UUID")
  @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
  private UUID id;

  @Column(name = "name")
  private String name;

  @Column(name = "brand")
  private String brand;

  @Column(name = "series")
  private String series;

  @Column(name = "part_number")
  private String partNumber;

  @Column(name = "color")
  private String color;

  @Column(name = "demand")
  private String demand;

  @Column(name = "cpu_series")
  private String cpuSeries;

  @Column(name = "cpu_brand")
  private String cpuBrand;

  @Column(name = "cpu_model")
  private String cpuModel;

  @Column(name = "gpu")
  private String gpu;

  @Column(name = "ram")
  private String ram;

  @Column(name = "screen_size")
  private String screenSize;

  @Column(name = "storage")
  private String storage;

  @Column(name = "storage_gateway")
  private String storageGateway;

  @Column(name = "m2_support")
  private String m2Support;

  @Column(name = "output_port")
  private String outputPort;

  @Column(name = "connect_port")
  private String connectPort;

  @Column(name = "wireless_connect")
  private String wirelessConnect;

  @Column(name = "key_board")
  private String keyBoard;

  @Column(name = "os")
  private String os;

  @Column(name = "size")
  private String size;

  @Column(name = "battery")
  private String battery;

  @Column(name = "weight")
  private BigDecimal weight;

  @Column(name = "led_indicator")
  private String ledIndicator;

  @Column(name = "accessories_included")
  private String accessoriesIncluded;

  @Column(name = "price")
  private BigDecimal price;

  @Column(name = "quantity")
  private Integer quantity;

  @Column(name = "image")
  private String image;

  @Column(name = "description")
  private String description;

  @CreationTimestamp
  @Column(name = "created_at")
  private LocalDateTime createdAt;

  @UpdateTimestamp
  @Column(name = "updated_at")
  private LocalDateTime updatedAt;

}
