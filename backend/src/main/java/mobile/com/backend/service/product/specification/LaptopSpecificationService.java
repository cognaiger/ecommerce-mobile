package mobile.com.backend.service.product.specification;

import mobile.com.backend.dto.request.product.LaptopPageFilterRequest;
import mobile.com.backend.entity.product.Laptop;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

@Service
public class LaptopSpecificationService extends GenericSpecificationService<Laptop> {

  public static String BRAND_FIELD = "brand";
  public static String SERIES_FIELD = "series";

  public Specification<Laptop> getLaptopSpecification(LaptopPageFilterRequest laptopPageFilterRequest) {
    Specification<Laptop> specification = Specification.where(null);

    if (laptopPageFilterRequest.getBrands() != null) {
      specification = specification.and(inStringList(laptopPageFilterRequest.getBrands(), BRAND_FIELD));
    }

    return specification;
  }
}
