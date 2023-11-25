package mobile.com.backend.common.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Getter
public enum OrderStatus {
  IN_CART(1),
  RECEIVED(2),
  DELIVERING(3),
  COMPLETED(4);

  private final Integer value;
}
