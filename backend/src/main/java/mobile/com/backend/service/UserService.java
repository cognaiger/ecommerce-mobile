package mobile.com.backend.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import mobile.com.backend.dto.user.UserGeneralResponse;
import mobile.com.backend.dto.user.UserPutRequest;
import mobile.com.backend.entity.User;
import mobile.com.backend.entity.auth.UserAuthentication;
import mobile.com.backend.mapper.user.UserGeneralMapper;
import mobile.com.backend.repository.UserRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
@RequiredArgsConstructor
public class UserService implements UserDetailsService{
  private final UserRepository userRepository;
  private final UserGeneralMapper userGeneralMapper;

  @Override
  public UserDetails loadUserByUsername(String username) {
    User user = userRepository.findByUsername(username)
        .orElseThrow(() -> new UsernameNotFoundException(username));
    return new UserAuthentication(user);
  }

  public UserDetails loadUserByUserId(UUID userId) {
    User user = userRepository.findById(userId)
        .orElseThrow(() -> new RuntimeException("User not found"));
    return new UserAuthentication(user);
  }


  public UserGeneralResponse getByUser(User user) {
    UserGeneralResponse userGeneralResponse = userGeneralMapper.toDto(user);
    return userGeneralResponse;
  }

  @Transactional
  public UserGeneralResponse putByUser(User oldUser, UserPutRequest request) {
    oldUser.setEmail(request.getEmail());
    oldUser.setAddress(request.getAddress());
    oldUser.setPhone(request.getPhone());

    User user = userRepository.save(oldUser);
    return userGeneralMapper.toDto(user);
  }

}
