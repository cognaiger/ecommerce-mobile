package mobile.com.backend.service.order;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import mobile.com.backend.dto.reponse.order.OrderItemGeneralResponse;
import mobile.com.backend.dto.request.order.OrderItemCreateRequest;
import mobile.com.backend.dto.request.order.OrderItemPatchRequest;
import mobile.com.backend.entity.User;
import mobile.com.backend.entity.order.Order;
import mobile.com.backend.entity.order.OrderItem;
import mobile.com.backend.entity.product.Product;
import mobile.com.backend.mapper.response.entity.order.OrderItemGeneralMapper;
import mobile.com.backend.repository.UserRepository;
import mobile.com.backend.repository.order.OrderItemRepository;
import mobile.com.backend.repository.order.OrderRepository;
import mobile.com.backend.repository.product.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class OrderItemService {

  private final ProductRepository productRepository;
  private final OrderItemGeneralMapper orderItemGeneralMapper;
  private final OrderItemRepository orderItemRepository;
  private final UserRepository userRepository;
  private final OrderRepository orderRepository;

  @Transactional
  public OrderItemGeneralResponse patchOrderItemByUserId(UUID userId, UUID orderId, UUID orderItemId, OrderItemPatchRequest orderItemPatchRequest) {
    OrderItem orderItem = validateOrderItemId(userId, orderId, orderItemId);
    orderItem = orderItemRepository.save(createOrderItemByPatchRequest(orderItem, orderItemPatchRequest));
    return orderItemGeneralMapper.toDto(orderItem);
  }

  @Transactional
  public OrderItemGeneralResponse createOrderItemByUserId(UUID userId, UUID orderId, OrderItemCreateRequest orderItemCreateRequest) {
    User user = userRepository.findById(userId)
        .orElseThrow(() -> new RuntimeException("User not found"));

    Order order = orderRepository.findById(orderId)
        .orElseThrow(() -> new RuntimeException("Order not found"));

    if (!order.getUser().getUserId().equals(user.getUserId())) {
      throw new RuntimeException("Order not found");
    }

    OrderItem orderItem = createOrderItemFromCreateRequest(orderItemCreateRequest);
    orderItem.setOrder(order);
    orderItem = orderItemRepository.save(orderItem);
    return orderItemGeneralMapper.toDto(orderItem);
  }

  @Transactional
  public void deleteOrderItemByUserId(UUID userId, UUID orderId, UUID orderItemId) {
    OrderItem orderItem = validateOrderItemId(userId, orderId, orderItemId);
    orderItemRepository.delete(orderItem);
  }

  public List<OrderItem> createOrderItems(List<OrderItemCreateRequest> orderItemCreateRequests) {
    List<OrderItem> orderItems = new ArrayList<>();

    for (OrderItemCreateRequest orderItemCreateRequest : orderItemCreateRequests) {
      orderItems.add(createOrderItemFromCreateRequest(orderItemCreateRequest));
    }

    return orderItems;
  }

  public OrderItem createOrderItemFromCreateRequest(OrderItemCreateRequest orderItemCreateRequest) {
    Product product = productRepository.findById(orderItemCreateRequest.getProductId())
          .orElseThrow(() -> new RuntimeException("Product not found"));

    if (product.getQuantity() < orderItemCreateRequest.getQuantity()) {
      throw new RuntimeException("Product quantity not enough");
    }

      return OrderItem.builder()
          .product(product)
          .quantity(orderItemCreateRequest.getQuantity())
          .build();
  }

  public OrderItem createOrderItemByPatchRequest(OrderItem orderItem, OrderItemPatchRequest request) {
    Product product = validateProductOrderItem(orderItem, request.getProductId());

    if (request.getQuantity() != null) {
      if (request.getQuantity() <= 0) {
        throw new RuntimeException("Invalid orderItem quantity");
      }
      orderItem.setQuantity(request.getQuantity());
    }

    return orderItem;
  }

  public OrderItem validateOrderItemId(UUID userId, UUID orderId, UUID orderItemId) {
    User user = userRepository.findById(userId)
        .orElseThrow(() -> new RuntimeException("User not found"));

    Order order = orderRepository.findById(orderId)
        .orElseThrow(() -> new RuntimeException("Order not found"));

    if (!order.getUser().getUserId().equals(user.getUserId())) {
      throw new RuntimeException("Order not found");
    }

    OrderItem orderItem = orderItemRepository.findById(orderItemId)
        .orElseThrow(() -> new RuntimeException("Order item not found"));

    if (!orderItem.getOrder().getOrderId().equals(order.getOrderId())) {
      throw new RuntimeException("Order item not found");
    }

    return orderItem;
  }

  public Product validateProductOrderItem(OrderItem orderItem, UUID productId) {
    Product product = productRepository.findById(productId)
        .orElseThrow(() -> new RuntimeException("Product not found"));

    if (product.getProductId() != orderItem.getProduct().getProductId()) {
      throw new RuntimeException("Invalid orderItem product");
    }

    return product;
  }

}
