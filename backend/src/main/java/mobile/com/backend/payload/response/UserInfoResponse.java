package mobile.com.backend.payload.response;

import java.util.List;

import lombok.Data;

@Data
public class UserInfoResponse {
    public UserInfoResponse(Long id2, String username2, String email2, List<String> roles) {
        id = id2;
        username = username2;
        email = email2;
        this.roles = roles;
    }

    private Long id;
    private String username;
    private String email;
    private String password;
    private List<String> roles;
}