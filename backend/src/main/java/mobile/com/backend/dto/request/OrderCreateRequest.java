package mobile.com.backend.dto.request;

import java.util.UUID;

public class OrderCreateRequest {
  private UUID userId;
  private UUID productId;
  private Integer quantity;
}
