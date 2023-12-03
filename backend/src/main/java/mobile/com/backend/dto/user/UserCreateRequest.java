package mobile.com.backend.dto.user;

import com.fasterxml.jackson.annotation.JsonInclude;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.*;
import lombok.experimental.SuperBuilder;
import mobile.com.backend.common.anotation.Username;

@JsonInclude(JsonInclude.Include.NON_NULL)
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class UserCreateRequest {

  @Username
  private String username;

  @Email
  private String email;

  @NotBlank
  @Size(min = 10, max = 10)
  private String password;

  @NotBlank
  private String phone;

  @NotBlank
  private String address;
}
