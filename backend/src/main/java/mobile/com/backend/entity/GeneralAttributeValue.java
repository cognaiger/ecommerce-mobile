package mobile.com.backend.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import java.util.UUID;

@Entity
@Table(schema = "product_schema",name = "general_attribute_value")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class GeneralAttributeValue {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "general_attribute_value_id", updatable = false, nullable = false)
  private Long generalAttributeValueId;

  @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
  private GeneralAttribute generalAttribute;

  @Column(name = "value")
  private String value;
}
