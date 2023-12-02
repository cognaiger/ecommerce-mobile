package mobile.com.backend.repository.product;

import mobile.com.backend.entity.product.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.UUID;

public interface ProductRepository extends JpaRepository<Product, UUID> {
  Page<Product> findAll(Specification<Product> specification, Pageable pageable);
  List<Product> findAll();
}
