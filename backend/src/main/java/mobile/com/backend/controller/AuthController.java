package mobile.com.backend.controller;

import lombok.RequiredArgsConstructor;
import mobile.com.backend.dto.auth.JwtAuthenticationResponse;
import mobile.com.backend.dto.auth.SignInRequest;
import mobile.com.backend.dto.user.UserCreateRequest;
import mobile.com.backend.service.auth.AuthenticationService;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/v1/auth", produces = "application/json")
public class AuthController {

  private final AuthenticationService authenticationService;

  @PostMapping("/signUp")
  public ResponseEntity<JwtAuthenticationResponse> signUp(@RequestBody UserCreateRequest request) {
    return ResponseEntity.ok(authenticationService.getByUserCreateRequest(request));
  }

  @PostMapping("/signIn")
  public ResponseEntity<JwtAuthenticationResponse> signIn(@RequestBody SignInRequest request) {
    return ResponseEntity.ok(authenticationService.getBySignInRequest(request));
  }
}
