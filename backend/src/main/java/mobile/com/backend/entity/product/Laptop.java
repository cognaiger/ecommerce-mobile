package mobile.com.backend.entity.product;

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
  @Column(name = "product_id")
  private UUID productId;

  @Column(name = "screen_size")
  private String screenSize;

  @Column(name = "storage")
  private String storage;

  @Column(name = "os")
  private String os;

  @Column(name = "cpu")
  private String cpu;

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
