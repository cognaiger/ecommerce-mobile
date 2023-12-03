package mobile.com.backend.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import mobile.com.backend.common.enums.UserRole;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;
import java.util.UUID;

@Entity
@Table(schema = "ecommerce", name = "user")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class User{

  @Id
  @Column(name = "user_id")
  @GeneratedValue(generator = "UUID")
  @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
  private UUID userId;

  @Enumerated(EnumType.STRING)
  @Column(name = "role", columnDefinition = "user_role")
  @JdbcTypeCode(SqlTypes.NAMED_ENUM)
  private UserRole role;

  @Column(name = "username")
  private String username;

  @Column(name = "password")
  private String password;

  @Column(name = "email")
  private String email;

  @Column(name = "phone")
  private String phone;

  @Column(name = "address")
  private String address;
}
