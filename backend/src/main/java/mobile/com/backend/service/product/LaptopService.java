package mobile.com.backend.service.product;

import lombok.RequiredArgsConstructor;
import mobile.com.backend.dto.reponse.product.LaptopGeneralResponse;
import mobile.com.backend.dto.reponse.product.ProductGeneralResponse;
import mobile.com.backend.dto.request.product.LaptopPageRequest;
import mobile.com.backend.dto.request.product.filter.AttributeFilter;
import mobile.com.backend.entity.product.Laptop;
import mobile.com.backend.entity.product.Product;
import mobile.com.backend.mapper.response.entity.product.LaptopGeneralMapper;
import mobile.com.backend.mapper.response.entity.product.ProductGeneralMapper;
import mobile.com.backend.repository.product.LaptopRepository;
import mobile.com.backend.repository.product.ProductRepository;
import mobile.com.backend.service.product.specification.LaptopSpecificationService;
import mobile.com.backend.service.product.specification.ProductSpecificationService;
import mobile.com.backend.service.product.specification.UtilsSpecificationService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class LaptopService {

  private final LaptopSpecificationService laptopSpecificationService;
  private final ProductSpecificationService productSpecificationService;
  private final LaptopRepository laptopRepository;
  private final LaptopGeneralMapper laptopGeneralMapper;
  private final ProductRepository productRepository;
  private final ProductGeneralMapper productGeneralMapper;

  public Page<ProductGeneralResponse> getLaptopPage(LaptopPageRequest laptopPageRequest) {
    List<AttributeFilter> laptopAttributeFilters = AttributeFilter.castList(laptopPageRequest.getAttributeFilters());
    List<AttributeFilter> productAttributeFilters = AttributeFilter
        .castList(laptopPageRequest.getGeneralFilter().getFilters());

    Specification<Laptop> laptopSpecification = laptopSpecificationService.getSpecification(laptopAttributeFilters);
    Specification<Product> productSpecification = productSpecificationService.getSpecification(productAttributeFilters);

    productSpecification = UtilsSpecificationService.join(
        productSpecification,
        laptopSpecification,
        "productId");

    Pageable pageable = PageRequest.of(
        laptopPageRequest.getGeneralFilter().getPage(),
        laptopPageRequest.getGeneralFilter().getSize());

    Page<Product> productPage = productRepository.findAll(productSpecification, pageable);
    return productPage.map(productGeneralMapper::toDto);
  }

  public List<Laptop> getAll() {
    return laptopRepository.findAll();
  }

  public String getLaptopName(UUID productId) {
    Product product = productRepository.findByProductId(productId);
    return product.getName();
  }

  public String getLaptopImageLink(UUID productId) {
    Product product = productRepository.findByProductId(productId);
    return product.getImageLink();
  }

  public String getLaptopPrice(UUID productId) {
    Product product = productRepository.findByProductId(productId);
    return product.getPrice();
  }

  public List<Laptop> getFirst10Laptops() {
    // Create a PageRequest with page number 0 and size 10
    PageRequest pageRequest = PageRequest.of(0, 10);

    // Fetch the first 10 laptops from the database
    Page<Laptop> laptopPage = laptopRepository.findAll(pageRequest);

    // Return the content of the page as a list
    return laptopPage.getContent();
}

public List<Laptop> getFirst30Laptops() {
    // Create a PageRequest with page number 0 and size 10
    PageRequest pageRequest = PageRequest.of(0, 30);

    // Fetch the first 10 laptops from the database
    Page<Laptop> laptopPage = laptopRepository.findAll(pageRequest);

    // Return the content of the page as a list
    return laptopPage.getContent();
}

public List<Product> getProductByBrandName(String brand) {
  return productRepository.findLaptopsByNameContainingIgnoreCase(brand);
}
}
