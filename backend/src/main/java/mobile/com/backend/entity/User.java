package mobile.com.backend.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

@Entity
@Table(schema = "ecommerce", name = "user",uniqueConstraints = { 
  @UniqueConstraint(columnNames = "username"),
  @UniqueConstraint(columnNames = "email") 
})
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class User {

  @Id
  @Column(name = "user_id")
  @GeneratedValue(generator = "UUID")
  @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
  private UUID userId;

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

  @ManyToOne
  @JoinColumn(name = "role_id")
  private Role role;

  public List<Role> getRoles() {
        List<Role> roles = new ArrayList<>();
        roles.add(role);
        return roles;
    }

    public void setRole(Set<Role> roles) {
        Role[] array = roles.toArray(new Role[0]);
        for (Role role : array) {
            System.out.println(role);
        }
        role = array[0];

    }

    public User(String username2, String email2, String encode) {
        username = username2;
        email = email2;
        password = encode;
    }
}
