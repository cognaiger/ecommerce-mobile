package mobile.com.backend.service.auth;


import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import mobile.com.backend.common.enums.UserRole;
import mobile.com.backend.dto.auth.JwtAuthenticationResponse;
import mobile.com.backend.dto.auth.SignInRequest;
import mobile.com.backend.dto.user.UserCreateRequest;
import mobile.com.backend.entity.User;
import mobile.com.backend.entity.auth.UserAuthentication;
import mobile.com.backend.repository.UserRepository;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AuthenticationService {
  private final UserRepository userRepository;
  private final PasswordEncoder passwordEncoder;
  private final JwtService jwtService;
  private final AuthenticationManager authenticationManager;

  @Transactional
  public JwtAuthenticationResponse getByUserCreateRequest(UserCreateRequest request) {
    var user = User.builder()
        .username(request.getUsername())
        .email(request.getEmail())
        .phone(request.getPhone())
        .address(request.getAddress())
        .password(passwordEncoder.encode(request.getPassword()))
        .role(UserRole.USER)
        .build();

    user = userRepository.saveAndFlush(user);
    UserAuthentication userAuthentication = new UserAuthentication(user);
    var jwt = jwtService.generateToken(userAuthentication);
    return JwtAuthenticationResponse.builder().token(jwt).build();
  }

  public JwtAuthenticationResponse getBySignInRequest(SignInRequest request) {
    authenticationManager.authenticate(
        new UsernamePasswordAuthenticationToken(request.getUsername(), request.getPassword()));

    var user = userRepository.findByUsername(request.getUsername())
        .orElseThrow(() -> new IllegalArgumentException("Invalid username or password"));

    UserAuthentication userAuthentication = new UserAuthentication(user);
    var jwt = jwtService.generateToken(userAuthentication);
    return JwtAuthenticationResponse.builder().token(jwt).build();
  }

  public static User getCurrentUser() {
    UserAuthentication userAuthentication = (UserAuthentication) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    return userAuthentication.getUser();
  }
}
