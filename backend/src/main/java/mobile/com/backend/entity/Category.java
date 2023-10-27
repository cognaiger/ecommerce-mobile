package mobile.com.backend.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Table(schema = "product_schema",name = "category")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
//@TypeDef()
public class Category {

  @Id
  @Column(name = "category_id", updatable = false, nullable = false)
  @GeneratedValue(generator = "UUID")
  @GenericGenerator(
      name = "UUID",
      strategy = "org.hibernate.id.UUIDGenerator"
  )
  private UUID categoryId;

  @Column(name = "name")
  private String name;

  @Column(name = "created_date")
  @CreationTimestamp
  private LocalDateTime createdDate;

  @Column(name = "last_updated_date")
  @UpdateTimestamp
  private LocalDateTime lastUpdatedDate;

}
