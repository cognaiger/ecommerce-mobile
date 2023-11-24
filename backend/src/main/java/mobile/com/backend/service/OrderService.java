package mobile.com.backend.service;

import lombok.RequiredArgsConstructor;
import mobile.com.backend.common.enums.OrderStatus;
import mobile.com.backend.dto.reponse.OrderGeneralResponse;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.entity.Order;
import mobile.com.backend.entity.User;
import mobile.com.backend.mapper.OrderGeneralMapper;
import mobile.com.backend.repository.OrderRepository;
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

  public Page<OrderGeneralResponse> getOrdersByUserId(UUID userId, OrderStatus lastStatus, PageParamRequest pageParamRequest) {
    User user = userRepository.findById(userId).orElseThrow(() -> new RuntimeException("User not found"));

    Page<Order> orders = orderRepository.findAllByUserAndLastStatus(user, lastStatus,
        PageRequest.of(pageParamRequest.getPageNumber(), pageParamRequest.getPageSize()));

    return orders.map(orderGeneralMapper::toDto);
  }



}
