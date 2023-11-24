package mobile.com.backend.controller;

import lombok.RequiredArgsConstructor;
import mobile.com.backend.common.enums.OrderStatus;
import mobile.com.backend.dto.reponse.OrderGeneralResponse;
import mobile.com.backend.dto.request.OrderCreateRequest;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.service.OrderService;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/v1/users", produces = "application/json")
public class UserController {

  private final OrderService orderService;

  @GetMapping("/{userId}/orders")
  public ResponseEntity<Page<OrderGeneralResponse>> getOrdersByUserId(
      @PathVariable UUID userId,
      PageParamRequest pageParamRequest,
      @RequestParam("lastStatus") OrderStatus lastStatus
  ) {

    Page<OrderGeneralResponse> orders = orderService.getOrdersByUserId(userId, lastStatus, pageParamRequest);
    return ResponseEntity.ok(orders);
  }

  @PostMapping("/{userId}/orders")
  public ResponseEntity<Object> createOrderByUserId(
      @PathVariable UUID userId,
      @RequestBody OrderCreateRequest request) {
    return ResponseEntity.ok(null);
  }

  @PostMapping("/{userId}/orders/{orderId}/orderTransportations")
  public ResponseEntity<Object> addOrderTransportationByUserId(
      @PathVariable UUID userId,
      @PathVariable UUID orderId,
      @RequestBody OrderStatus orderStatus) {
    return ResponseEntity.ok(null);
  }

  @DeleteMapping("/{userId}/orders/{orderId}")
  public ResponseEntity<Object> deleteOrderByUserId(
      @PathVariable UUID userId,
      @PathVariable UUID orderId) {
    return ResponseEntity.ok(null);
  }
}
