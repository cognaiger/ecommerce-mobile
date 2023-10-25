package mobile.com.backend.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(schema = "product_schema",name = "general_attribute")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class GeneralAttribute {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "general_attribute_id")
  private Long generalAttributeId;

  @Column(name = "name")
  private String name;

  @Column(name = "is_filter")
  private Boolean isFilter;
}
