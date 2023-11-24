package mobile.com.backend.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import mobile.com.backend.common.enums.OrderStatus;
import mobile.com.backend.dto.reponse.OrderDetailResponse;
import mobile.com.backend.dto.reponse.OrderGeneralResponse;
import mobile.com.backend.dto.request.OrderCreateRequest;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.entity.Order;
import mobile.com.backend.entity.Product;
import mobile.com.backend.entity.User;
import mobile.com.backend.mapper.response.entity.OrderDetailMapper;
import mobile.com.backend.mapper.response.entity.OrderGeneralMapper;
import mobile.com.backend.repository.OrderRepository;
import mobile.com.backend.repository.OrderTransportationRepository;
import mobile.com.backend.repository.ProductRepository;
import mobile.com.backend.repository.UserRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
@RequiredArgsConstructor
public class OrderService {

  private final OrderRepository orderRepository;
  private final OrderGeneralMapper orderGeneralMapper;
  private final UserRepository userRepository;
  private final ProductRepository productRepository;
  private final OrderTransportationRepository orderTransportationRepository;
  private final OrderTransportationService orderTransportationService;
  private final OrderDetailMapper orderDetailMapper;

  public Page<OrderGeneralResponse> getOrdersByUserId(UUID userId, OrderStatus lastStatus, PageParamRequest pageParamRequest) {
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
  public OrderGeneralResponse createOrderByUserId(UUID userId, OrderCreateRequest orderCreateRequest) {
    User user = userRepository.findById(userId)
        .orElseThrow(() -> new RuntimeException("User not found"));
    Product product = productRepository.findById(orderCreateRequest.getProductId())
        .orElseThrow(() -> new RuntimeException("Product not found"));

    Order order = orderRepository.save(createOrder(user, product, orderCreateRequest.getQuantity()));
    orderTransportationRepository.save(orderTransportationService.createOrderTransportation(order, OrderStatus.IN_CART));
    return orderGeneralMapper.toDto(order);
  }

  public Order createOrder(User user, Product product, Integer quantity) {
    return Order.builder()
        .user(user)
        .product(product)
        .quantity(quantity)
        .lastStatus(OrderStatus.IN_CART)
        .build();
  }
}
