package mobile.com.backend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import mobile.com.backend.dto.reponse.stats.CountResponse;
import mobile.com.backend.service.UserService;
import mobile.com.backend.service.order.OrderService;
import mobile.com.backend.service.product.ProductService;

@RestController
@RequestMapping("/api/v1/stats")
public class StatsController {
    @Autowired
    private ProductService productService;
    @Autowired
    private UserService userService;
    @Autowired
    private OrderService orderService;

    @GetMapping("/product-count")
    public ResponseEntity<CountResponse> getProductCount() {
        long count = productService.getProductCount();
        CountResponse countResponse = new CountResponse(count);
        return ResponseEntity.ok(countResponse);
    }

    @GetMapping("/user-count")
    public ResponseEntity<CountResponse> getUserCount() {
        long count = userService.getUserCount();
        CountResponse countResponse = new CountResponse(count);
        return ResponseEntity.ok(countResponse);
    }

    @GetMapping("/completed-order-count")
    public ResponseEntity<CountResponse> getCompletedOrderCount() {
        long count = orderService.getCompletedOrderCount();
        CountResponse countResponse = new CountResponse(count);
        return ResponseEntity.ok(countResponse);
    }
}