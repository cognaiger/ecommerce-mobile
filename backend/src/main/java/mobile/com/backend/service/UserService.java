package mobile.com.backend.service;

import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mobile.com.backend.entity.User;
import mobile.com.backend.repository.UserRepository;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public long getUserCount() {
        return userRepository.count();
    }
    public Optional<User> getUserById(UUID userId) {
        return userRepository.findById(userId);
    }
    
}