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
@Table(schema = "ecommerce", name = "laptop")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Laptop {

  @Id
  @Column(name = "laptop_id")
  @GeneratedValue(generator = "UUID")
  @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
  private UUID laptopId;

  @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
  @JoinColumn(name = "product_id")
  private Product product;

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

  @CreationTimestamp
  @Column(name = "created_at")
  private LocalDateTime createdAt;

  @UpdateTimestamp
  @Column(name = "updated_at")
  private LocalDateTime updatedAt;
}
