package mobile.com.backend.service.product.specification;

import jakarta.persistence.criteria.Join;
import jakarta.persistence.criteria.JoinType;
import jakarta.persistence.criteria.Root;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

@Service
public class UtilsSpecificationService {
  public static <A, B>  Specification<A> join(
      Specification<A> a, Specification<B> b,
      String commonField
  ) {
    return (root, query, criteriaBuilder) -> {
      Join<A, B> join = root.join("laptop", JoinType.INNER);
      return criteriaBuilder.and(a.toPredicate(root, query, criteriaBuilder), b.toPredicate((Root<B>) join, query, criteriaBuilder));
    };
  }

}
