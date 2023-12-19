package mobile.com.backend.repository.product;

import mobile.com.backend.entity.product.Laptop;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface LaptopRepository extends JpaRepository<Laptop, UUID> {

  Page<Laptop> findAll(Specification<Laptop> specification, Pageable pageable);
  List<Laptop> findAll();
}
