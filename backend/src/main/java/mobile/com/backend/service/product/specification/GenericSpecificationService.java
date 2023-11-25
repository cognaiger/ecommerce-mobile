package mobile.com.backend.service.product.specification;

import jakarta.persistence.criteria.Expression;
import org.springframework.data.jpa.domain.Specification;

import java.util.List;

public abstract class GenericSpecificationService<E> {

  <E, T> Specification<E> inStringList(List<T> list, String field) {
    return (root, query, criteriaBuilder) -> {
      Expression<String> brandExpression = root.get(field);
      return brandExpression.in(list);
    };
  }

}
