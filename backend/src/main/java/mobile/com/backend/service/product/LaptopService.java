package mobile.com.backend.service.product;

import lombok.RequiredArgsConstructor;
import mobile.com.backend.dto.reponse.product.LaptopGeneralResponse;
import mobile.com.backend.dto.request.product.LaptopPageFilterRequest;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.entity.product.Laptop;
import mobile.com.backend.mapper.response.entity.product.LaptopGeneralMapper;
import mobile.com.backend.repository.product.LaptopRepository;
import mobile.com.backend.service.product.specification.LaptopSpecificationService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;


@Service
@RequiredArgsConstructor
public class LaptopService {

  private final LaptopSpecificationService laptopSpecificationService;
  private final LaptopRepository laptopRepository;
  private final LaptopGeneralMapper laptopGeneralMapper;

  public Page<LaptopGeneralResponse> getLaptopPage(LaptopPageFilterRequest laptopPageFilterRequest, PageParamRequest pageParamRequest) {
    Specification<Laptop> spec = laptopSpecificationService.getLaptopSpecification(laptopPageFilterRequest);
    Pageable pageable = PageRequest.of(pageParamRequest.getPageNumber(), pageParamRequest.getPageSize());
    Page<Laptop> laptopPage = laptopRepository.findAll(spec, pageable);
    return laptopPage.map(laptopGeneralMapper::toDto);
  }

}
