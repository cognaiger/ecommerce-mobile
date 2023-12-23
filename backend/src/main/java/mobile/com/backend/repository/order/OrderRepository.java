package mobile.com.backend.repository.order;

import mobile.com.backend.common.enums.OrderStatus;
import mobile.com.backend.entity.order.Order;
import mobile.com.backend.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.UUID;

public interface OrderRepository extends JpaRepository<Order, UUID> {

  Page<Order> findAllByUserAndLastStatus(User user, OrderStatus lastStatus, Pageable pageable);

  long countByLastStatus(OrderStatus lastStatus);
  List<Order> findAll();

  @Modifying
@Query("UPDATE Order o SET o.lastStatus = :newStatus WHERE o.orderId = :orderId")
int updateOrderStatus(@Param("orderId") UUID orderId, @Param("newStatus") OrderStatus newStatus);

}
