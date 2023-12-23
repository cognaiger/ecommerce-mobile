package mobile.com.backend.service.order;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import mobile.com.backend.common.enums.OrderStatus;
import mobile.com.backend.dto.reponse.order.OrderDetailResponse;
import mobile.com.backend.dto.reponse.order.OrderGeneralResponse;
import mobile.com.backend.dto.reponse.order.OrderItemGeneralResponse;
import mobile.com.backend.dto.request.order.OrderCreateRequest;
import mobile.com.backend.dto.request.order.OrderItemPatchRequest;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.entity.order.DeliveryAddress;
import mobile.com.backend.entity.order.Order;
import mobile.com.backend.entity.order.OrderItem;
import mobile.com.backend.entity.product.Product;
import mobile.com.backend.entity.User;
import mobile.com.backend.mapper.response.entity.order.OrderDetailMapper;
import mobile.com.backend.mapper.response.entity.order.OrderGeneralMapper;
import mobile.com.backend.mapper.response.entity.order.OrderItemGeneralMapper;
import mobile.com.backend.repository.order.DeliveryAddressRepository;
import mobile.com.backend.repository.order.OrderItemRepository;
import mobile.com.backend.repository.order.OrderRepository;
import mobile.com.backend.repository.order.OrderTransportationRepository;
import mobile.com.backend.repository.product.ProductRepository;
import mobile.com.backend.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class OrderService {

  private final OrderGeneralMapper orderGeneralMapper;
  private final OrderDetailMapper orderDetailMapper;
  private final OrderItemGeneralMapper orderItemGeneralMapper;

  private final UserRepository userRepository;

  private final ProductRepository productRepository;
  private final OrderTransportationRepository orderTransportationRepository;
  private final DeliveryAddressRepository deliveryAddressRepository;
  private final OrderItemRepository orderItemRepository;

  private final OrderItemService orderItemService;
  @Autowired
  private OrderRepository orderRepository;

  public long getCompletedOrderCount() {
    return orderRepository.countByLastStatus(OrderStatus.COMPLETED);
  }

  public Page<OrderGeneralResponse> getOrdersByUserId(UUID userId, OrderStatus lastStatus,
      PageParamRequest pageParamRequest) {
    User user = userRepository.findById(userId)
        .orElseThrow(() -> new RuntimeException("User not found"));

    Page<Order> orders = orderRepository.findAllByUserAndLastStatus(user, lastStatus,
        PageRequest.of(pageParamRequest.getPageNumber(), pageParamRequest.getPageSize()));

    return orders.map(orderGeneralMapper::toDto);
  }

  public OrderDetailResponse getOrderDetailResponseByOrderId(UUID userId, UUID orderId) {
    User user = userRepository.findById(userId)
        .orElseThrow(() -> new RuntimeException("User not found"));

    Order order = orderRepository.findById(orderId)
        .orElseThrow(() -> new RuntimeException("Order not found"));

    if (!order.getUser().getUserId().equals(user.getUserId())) {
      throw new RuntimeException("Order not found");
    }

    return orderDetailMapper.toDto(order);
  }

  @Transactional
  public OrderDetailResponse createOrderByUserId(UUID userId, OrderCreateRequest orderCreateRequest) {
    User user = userRepository.findById(userId)
        .orElseThrow(() -> new RuntimeException("User not found"));

    DeliveryAddress deliveryAddress = deliveryAddressRepository.findById(orderCreateRequest.getDeliveryAddressId())
        .orElseThrow(() -> new RuntimeException("Delivery address not found"));

    Order order = Order.builder()
        .user(user)
        .deliveryAddress(deliveryAddress)
        .lastStatus(OrderStatus.IN_CART)
        .build();

    order = orderRepository.saveAndFlush(order);
    order.setOrderItems(new ArrayList<>());

    List<OrderItem> orderItems = orderItemService.createOrderItems(orderCreateRequest.getOrderItems());
    for (OrderItem orderItem : orderItems) {
      orderItem.setOrder(order);
      orderItem = orderItemRepository.saveAndFlush(orderItem);
      order.getOrderItems().add(orderItem);
    }

    return orderDetailMapper.toDto(order);
  }

  @Transactional
  public void deleteOrderByUserId(UUID userId, UUID orderId) {
    User user = userRepository.findById(userId)
        .orElseThrow(() -> new RuntimeException("User not found"));

    Order order = orderRepository.findById(orderId)
        .orElseThrow(() -> new RuntimeException("Order not found"));

    if (!order.getUser().getUserId().equals(user.getUserId())) {
      throw new RuntimeException("Order not found");
    }

    if (order.getLastStatus() != OrderStatus.IN_CART) {
      throw new RuntimeException("Only delete order in cart");
    }

    orderRepository.delete(order);
  }

  public List<Order> findAll() {
    return orderRepository.findAll();
  }

  @Transactional
  public void changeOrderStatus(UUID orderId, OrderStatus newStatus) {
    Order order = orderRepository.findById(orderId)
        .orElseThrow(() -> new RuntimeException("Order not found"));

    order.setLastStatus(newStatus);
    orderRepository.save(order);
  }
}
