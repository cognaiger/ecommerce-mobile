package mobile.com.backend.repository.order;

import mobile.com.backend.entity.order.OrderTransportation;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface OrderTransportationRepository extends JpaRepository<OrderTransportation, UUID> {
}
