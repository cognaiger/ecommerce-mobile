package mobile.com.backend.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import mobile.com.backend.dto.reponse.order.OrderForAdminPage;
import mobile.com.backend.entity.order.Order;
import mobile.com.backend.service.order.OrderService;

@RestController
@RequestMapping("/api/v1/orders")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @GetMapping
    public ResponseEntity<List<OrderForAdminPage>> findAll() {
        List<Order> orders = orderService.findAll();
        List<OrderForAdminPage> orderForAdminPages = orders.stream().map(order -> convertToOrderForAdminPage(order))
                .collect(Collectors.toList());
        return ResponseEntity.ok(orderForAdminPages);
    }

    private OrderForAdminPage convertToOrderForAdminPage(Order order) {
        OrderForAdminPage orderForAdminPage = new OrderForAdminPage();
        orderForAdminPage.setOrderId(order.getOrderId());
        orderForAdminPage.setLastStatus(order.getLastStatus());
        orderForAdminPage.setDeliveryAddress(order.getDeliveryAddress());

        return orderForAdminPage;
    }

}
