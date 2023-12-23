package mobile.com.backend.repository.product;

import mobile.com.backend.entity.product.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import java.util.List;
import java.util.UUID;

@Repository
public interface ProductRepository extends JpaRepository<Product, UUID> , JpaSpecificationExecutor<Product> {
  Page<Product> findAll(Specification<Product> specification, Pageable pageable);

  List<Product> findAll();

  Product findByProductId(UUID productId);

  // @Query("SELECT p FROM Product p INNER JOIN ecommerce.laptop l ON p.product_id = l.product_id " +
  //     "WHERE p.name LIKE %:keyword% ")
  // List<Product> findLaptopsByBrandNameContaining(String keyword, Pageable pageable);

  @Query("SELECT p FROM Product p JOIN Laptop l ON p.productId = l.productId WHERE lower(p.name) LIKE lower(concat('%', :nameKeyword, '%'))")
    List<Product> findLaptopsByNameContainingIgnoreCase(String nameKeyword);
}
