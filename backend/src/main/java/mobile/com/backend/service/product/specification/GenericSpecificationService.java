package mobile.com.backend.service.product.specification;

import jakarta.persistence.criteria.Expression;
import mobile.com.backend.dto.request.product.filter.AttributeFilter;
import org.springframework.data.jpa.domain.Specification;

import java.util.List;

public abstract class GenericSpecificationService<E> {

  public <E, T> Specification<E> inStringList(List<T> list, String field) {
    return (root, query, criteriaBuilder) -> {
      Expression<String> expression = root.get(field);
      return expression.in(list);
    };
  }

  public Specification<E> getSpecification(List<AttributeFilter> attributeFilters) {
    Specification<E> specification = Specification.where(null);
    for (AttributeFilter attributeFilter : attributeFilters) {
      specification = specification.and(inStringList(attributeFilter.getValues(), attributeFilter.getFilter()));
    }
    return specification;
  }

}
