package mobile.com.backend.controller;

import lombok.RequiredArgsConstructor;
import mobile.com.backend.common.enums.OrderStatus;
import mobile.com.backend.dto.reponse.OrderDetailResponse;
import mobile.com.backend.dto.reponse.OrderGeneralResponse;
import mobile.com.backend.dto.request.OrderCreateRequest;
import mobile.com.backend.dto.request.OrderPatchRequest;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.service.OrderService;
import mobile.com.backend.service.OrderTransportationService;
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
  private final OrderTransportationService orderTransportationService;

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
  public ResponseEntity<OrderGeneralResponse> createOrderByUserId(
      @PathVariable UUID userId,
      @RequestBody OrderCreateRequest request) {
    OrderGeneralResponse order = orderService.createOrderByUserId(userId, request);
    return ResponseEntity.created(null).body(order);
  }

  @GetMapping("/{userId}/orders/{orderId}")
  public ResponseEntity<OrderDetailResponse> getOrderByUserId(
      @PathVariable UUID userId,
      @PathVariable UUID orderId) {
    OrderDetailResponse order = orderService.getOrderDetailResponseByOrderId(userId, orderId);
    return ResponseEntity.ok(order);
  }

  @PostMapping("/{userId}/orders/{orderId}/orderTransportations")
  public ResponseEntity<Object> addOrderTransportationByUserId(
      @PathVariable UUID userId,
      @PathVariable UUID orderId,
      @RequestBody OrderStatus orderStatus) {

    orderTransportationService.createOrderTransportationByUserId(userId, orderId, orderStatus);
    return ResponseEntity.created(null).build();
  }

  @DeleteMapping("/{userId}/orders/{orderId}")
  public ResponseEntity<Object> deleteOrderByUserId(
      @PathVariable UUID userId,
      @PathVariable UUID orderId) {
    orderService.deleteOrderByUserId(userId, orderId);
    return ResponseEntity.noContent().build();
  }

  @PatchMapping("/{userId}/orders/{orderId}")
  public ResponseEntity<OrderGeneralResponse> patchOrderByUserId(
      @PathVariable UUID userId,
      @PathVariable UUID orderId,
      @RequestBody OrderPatchRequest orderPatchRequest
      ) {
    OrderGeneralResponse order = orderService.patchOrderByUserId(userId, orderId, orderPatchRequest);
    return ResponseEntity.ok(order);
  }
}
