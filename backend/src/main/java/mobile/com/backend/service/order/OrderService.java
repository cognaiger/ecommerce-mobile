package mobile.com.backend.service.order;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import mobile.com.backend.common.enums.OrderStatus;
import mobile.com.backend.dto.order.response.OrderDetailResponse;
import mobile.com.backend.dto.order.response.OrderGeneralResponse;
import mobile.com.backend.dto.order.request.OrderCreateRequest;
import mobile.com.backend.dto.PageParamRequest;
import mobile.com.backend.entity.order.DeliveryAddress;
import mobile.com.backend.entity.order.Order;
import mobile.com.backend.entity.order.OrderItem;
import mobile.com.backend.entity.User;
import mobile.com.backend.mapper.order.OrderDetailMapper;
import mobile.com.backend.mapper.order.OrderGeneralMapper;
import mobile.com.backend.mapper.order.OrderItemGeneralMapper;
import mobile.com.backend.repository.order.DeliveryAddressRepository;
import mobile.com.backend.repository.order.OrderItemRepository;
import mobile.com.backend.repository.order.OrderRepository;
import mobile.com.backend.repository.order.OrderTransportationRepository;
import mobile.com.backend.repository.product.ProductRepository;
import mobile.com.backend.repository.UserRepository;
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
  private final OrderRepository orderRepository;
  private final ProductRepository productRepository;
  private final OrderTransportationRepository orderTransportationRepository;
  private final DeliveryAddressRepository deliveryAddressRepository;
  private final OrderItemRepository orderItemRepository;

  private final OrderItemService orderItemService;

  public Page<OrderGeneralResponse> getOrdersByUserId(User user, OrderStatus lastStatus, PageParamRequest pageParamRequest) {
    Page<Order> orders = orderRepository.findAllByUserAndLastStatus(user, lastStatus,
        PageRequest.of(pageParamRequest.getPageNumber(), pageParamRequest.getPageSize()));

    return orders.map(orderGeneralMapper::toDto);
  }

  public OrderDetailResponse getOrderDetailResponseByOrderId(User user, UUID orderId) {
    Order order = orderRepository.findById(orderId)
        .orElseThrow(() -> new RuntimeException("Order not found"));

    if (!order.getUser().getUserId().equals(user.getUserId())) {
      throw new RuntimeException("Order not found");
    }

    return orderDetailMapper.toDto(order);
  }

  @Transactional
  public OrderDetailResponse createOrderByUserId(User user, OrderCreateRequest orderCreateRequest) {
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
  public void deleteOrderByUserId(User user, UUID orderId) {
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


}
