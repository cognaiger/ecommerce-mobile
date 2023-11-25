package mobile.com.backend.repository.order;

import mobile.com.backend.common.enums.OrderStatus;
import mobile.com.backend.entity.order.Order;
import mobile.com.backend.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface OrderRepository extends JpaRepository<Order, UUID> {

  Page<Order> findAllByUserAndLastStatus(User user, OrderStatus lastStatus, Pageable pageable);
}
