package mobile.com.backend.controller;

import lombok.RequiredArgsConstructor;
import mobile.com.backend.common.enums.OrderStatus;
import mobile.com.backend.dto.reponse.order.OrderDetailResponse;
import mobile.com.backend.dto.reponse.order.OrderGeneralResponse;
import mobile.com.backend.dto.reponse.order.OrderItemGeneralResponse;
import mobile.com.backend.dto.request.order.OrderCreateRequest;
import mobile.com.backend.dto.request.order.OrderItemCreateRequest;
import mobile.com.backend.dto.request.order.OrderItemPatchRequest;
import mobile.com.backend.security.jwt.JwtUtils;
import mobile.com.backend.security.utils.SecurityContextUtil;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.service.order.OrderItemService;
import mobile.com.backend.service.order.OrderService;
import mobile.com.backend.service.order.OrderTransportationService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import jakarta.servlet.http.HttpServletRequest;

import java.util.UUID;

@Validated
@RestController
// @PreAuthorize("hasRole('ROLE_USER')")
@RequiredArgsConstructor
@RequestMapping(value = "/api/v1/users", produces = "application/json")
public class UserController {

  private final OrderService orderService;
  private final OrderTransportationService orderTransportationService;
  private final OrderItemService orderItemService;

  @GetMapping("/{userId}/orders")
  public ResponseEntity<Page<OrderGeneralResponse>> getOrdersByUserId(
      @PathVariable UUID userId,
      PageParamRequest pageParamRequest,
      @RequestParam("lastStatus") OrderStatus lastStatus) {

    Page<OrderGeneralResponse> orders = orderService.getOrdersByUserId(userId, lastStatus, pageParamRequest);
    return ResponseEntity.ok(orders);
  }

  @PostMapping("/{userId}/orders")
  public ResponseEntity<OrderDetailResponse> createOrderByUserId(
      @PathVariable UUID userId,
      @RequestBody OrderCreateRequest request) {
    OrderDetailResponse order = orderService.createOrderByUserId(userId, request);
    return ResponseEntity.created(null).body(order);
  }

  @GetMapping("/{userId}/orders/{orderId}")
  public ResponseEntity<OrderDetailResponse> getOrderByUserId(
      @PathVariable UUID userId,
      @PathVariable UUID orderId) {
    OrderDetailResponse order = orderService.getOrderDetailResponseByOrderId(userId, orderId);
    return ResponseEntity.ok(order);
  }

  @DeleteMapping("/{userId}/orders/{orderId}")
  public ResponseEntity<Object> deleteOrderByUserId(
      @PathVariable UUID userId,
      @PathVariable UUID orderId) {
    orderService.deleteOrderByUserId(userId, orderId);
    return ResponseEntity.noContent().build();
  }

  @PostMapping("/{userId}/orders/{orderId}/orderTransportations")
  public ResponseEntity<Object> addOrderTransportationByUserId(
      @PathVariable UUID userId,
      @PathVariable UUID orderId,
      @RequestBody OrderStatus orderStatus) {

    orderTransportationService.createOrderTransportationByUserId(userId, orderId, orderStatus);
    return ResponseEntity.created(null).build();
  }

  @PatchMapping("/{userId}/orders/{orderId}/orderItems/{orderItemId}")
  public ResponseEntity<OrderItemGeneralResponse> patchOrderByUserId(
      @PathVariable UUID userId,
      @PathVariable UUID orderId,
      @PathVariable UUID orderItemId,
      @RequestBody OrderItemPatchRequest orderItemPatchRequest) {
    OrderItemGeneralResponse orderItem = orderItemService.patchOrderItemByUserId(userId, orderId, orderItemId,
        orderItemPatchRequest);
    return ResponseEntity.ok(orderItem);
  }

  @DeleteMapping("/{userId}/orders/{orderId}/orderItems/{orderItemId}")
  public ResponseEntity<Object> deleteOrderItemByUserId(
      @PathVariable UUID userId,
      @PathVariable UUID orderId,
      @PathVariable UUID orderItemId) {
    orderItemService.deleteOrderItemByUserId(userId, orderId, orderItemId);
    return ResponseEntity.noContent().build();
  }

  @PostMapping("/{userId}/orders/{orderId}/orderItems")
  public ResponseEntity<OrderItemGeneralResponse> createOrderItemByUserId(
      @PathVariable UUID userId,
      @PathVariable UUID orderId,
      @RequestBody OrderItemCreateRequest orderItemCreateRequest) {
    OrderItemGeneralResponse orderItem = orderItemService.createOrderItemByUserId(userId, orderId,
        orderItemCreateRequest);
    return ResponseEntity.created(null).body(orderItem);
  }

  @GetMapping("/currentUserId")
  public String getCurrentUserId() {
    UUID userId = SecurityContextUtil.getCurrentUserId();
    if (userId != null) {
      return userId.toString();
    } else {
      return "No authenticated user";
    }
  }

  @GetMapping("/currentJwtToken")
  public String getCurrentJwtToken(HttpServletRequest request) {
    String jwtToken = SecurityContextUtil.getCurrentJwtToken(request);
    if (jwtToken != null) {
      System.out.println(jwtToken);
      return jwtToken;
    } else {
      return "No JWT token found";
    }
  }
}
