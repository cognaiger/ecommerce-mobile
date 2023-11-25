package mobile.com.backend.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import mobile.com.backend.common.enums.OrderStatus;
import mobile.com.backend.entity.Order;
import mobile.com.backend.entity.OrderTransportation;
import mobile.com.backend.entity.User;
import mobile.com.backend.repository.OrderRepository;
import mobile.com.backend.repository.OrderTransportationRepository;
import mobile.com.backend.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
@RequiredArgsConstructor
public class OrderTransportationService {

  private final UserRepository userRepository;
  private final OrderRepository orderRepository;
  private final OrderTransportationRepository orderTransportationRepository;

  @Transactional
  public void createOrderTransportationByUserId(UUID userId, UUID orderId, OrderStatus orderStatus) {
    User user = userRepository.findById(userId)
        .orElseThrow(() -> new RuntimeException("User not found"));

    Order order = orderRepository.findById(orderId)
        .orElseThrow(() -> new RuntimeException("Order not found"));

    if (!order.getUser().getUserId().equals(user.getUserId())) {
      throw new RuntimeException("Order not found");
    }

    if (order.getLastStatus().getValue() + 1 != orderStatus.getValue()) {
      throw new RuntimeException("Order status is not valid");
    }

    order.setLastStatus(orderStatus);
    orderRepository.save(order);
    orderTransportationRepository.save(createOrderTransportation(order, orderStatus));
  }

  public OrderTransportation createOrderTransportation(Order order, OrderStatus orderStatus) {
    return OrderTransportation.builder()
        .order(order)
        .status(orderStatus)
        .build();
  }
}
