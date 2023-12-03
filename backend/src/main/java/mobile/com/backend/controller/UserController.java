package mobile.com.backend.controller;

import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import lombok.RequiredArgsConstructor;
import mobile.com.backend.dto.user.UserGeneralResponse;
import mobile.com.backend.dto.user.UserPutRequest;
import mobile.com.backend.entity.auth.UserAuthentication;
import mobile.com.backend.service.auth.AuthenticationService;
import mobile.com.backend.service.UserService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/v1/users", produces = "application/json")
@SecurityRequirement(name = "Bearer Authentication")
public class UserController {

  private final UserService userService;

  @GetMapping("/profile")
  public ResponseEntity<UserGeneralResponse> getUser() {
    return ResponseEntity.ok(userService.getByUser(AuthenticationService.getCurrentUser()));
  }

  @PutMapping("/profile")
  public ResponseEntity<UserGeneralResponse> putUser(@RequestBody UserPutRequest request) {
    return ResponseEntity.ok(userService.putByUser(AuthenticationService.getCurrentUser(), request));
  }

}
