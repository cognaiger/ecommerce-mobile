package mobile.com.backend.repository;

import mobile.com.backend.entity.OrderTransportation;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface OrderTransportationRepository extends JpaRepository<OrderTransportation, UUID> {
}
