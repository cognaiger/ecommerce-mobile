package mobile.com.backend.controller;

import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import lombok.RequiredArgsConstructor;
import mobile.com.backend.common.enums.OrderStatus;
import mobile.com.backend.dto.PageParamRequest;
import mobile.com.backend.dto.order.request.OrderCreateRequest;
import mobile.com.backend.dto.order.request.OrderItemCreateRequest;
import mobile.com.backend.dto.order.request.OrderItemPatchRequest;
import mobile.com.backend.dto.order.response.OrderDetailResponse;
import mobile.com.backend.dto.order.response.OrderGeneralResponse;
import mobile.com.backend.dto.order.response.OrderItemGeneralResponse;
import mobile.com.backend.service.auth.AuthenticationService;
import mobile.com.backend.service.order.OrderItemService;
import mobile.com.backend.service.order.OrderService;
import mobile.com.backend.service.order.OrderTransportationService;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/v1/orders", produces = "application/json")
@SecurityRequirement(name = "Bearer Authentication")
public class OrderController {

  private final OrderService orderService;
  private final OrderTransportationService orderTransportationService;
  private final OrderItemService orderItemService;

  @GetMapping("")
  public ResponseEntity<Page<OrderGeneralResponse>> getOrdersByUserId(PageParamRequest pageParamRequest,
                                                                      @RequestParam("lastStatus") OrderStatus lastStatus) {
    Page<OrderGeneralResponse> orders =
        orderService.getOrdersByUserId(AuthenticationService.getCurrentUser()
            , lastStatus, pageParamRequest);
    return ResponseEntity.ok(orders);
  }

  @PostMapping("")
  public ResponseEntity<OrderDetailResponse> createOrderByUserId(@RequestBody OrderCreateRequest request) {
    OrderDetailResponse order =
        orderService.createOrderByUserId(AuthenticationService.getCurrentUser(), request);
    return ResponseEntity.created(null).body(order);
  }

  @GetMapping("/{orderId}")
  public ResponseEntity<OrderDetailResponse> getOrderByUserId(@PathVariable UUID orderId) {
    OrderDetailResponse order =
        orderService.getOrderDetailResponseByOrderId(AuthenticationService.getCurrentUser(), orderId);
    return ResponseEntity.ok(order);
  }

  @DeleteMapping("/{orderId}")
  public ResponseEntity<Object> deleteOrderByUserId(@PathVariable UUID orderId) {
    orderService.deleteOrderByUserId(AuthenticationService.getCurrentUser(),
        orderId);
    return ResponseEntity.noContent().build();
  }

  @PostMapping("/{orderId}/orderTransportations")
  public ResponseEntity<Object> addOrderTransportationByUserId(@PathVariable UUID orderId,
                                                               @RequestBody OrderStatus orderStatus) {
    orderTransportationService.createOrderTransportationByUserId(AuthenticationService.getCurrentUser(), orderId,
        orderStatus);
    return ResponseEntity.created(null).build();
  }

  @PatchMapping("/{orderId}/orderItems/{orderItemId}")
  public ResponseEntity<OrderItemGeneralResponse> patchOrderByUserId(@PathVariable UUID orderId,
                                                                     @PathVariable UUID orderItemId,
                                                                     @RequestBody OrderItemPatchRequest orderItemPatchRequest) {
    OrderItemGeneralResponse orderItem = orderItemService.patchOrderItemByUserId(
        AuthenticationService.getCurrentUser(), orderId, orderItemId, orderItemPatchRequest);
    return ResponseEntity.ok(orderItem);
  }

  @DeleteMapping("/{orderId}/orderItems/{orderItemId}")
  public ResponseEntity<Object> deleteOrderItemByUserId(@PathVariable UUID orderId, @PathVariable UUID orderItemId) {
    orderItemService.deleteOrderItemByUserId(AuthenticationService.getCurrentUser(), orderId, orderItemId);
    return ResponseEntity.noContent().build();
  }

  @PostMapping("/{orderId}/orderItems")
  public ResponseEntity<OrderItemGeneralResponse> createOrderItemByUserId(@PathVariable UUID orderId,
                                                                          @RequestBody OrderItemCreateRequest orderItemCreateRequest) {
    OrderItemGeneralResponse orderItem =
        orderItemService.createOrderItemByUserId(AuthenticationService.getCurrentUser(), orderId,
            orderItemCreateRequest);
    return ResponseEntity.created(null).body(orderItem);
  }
}
