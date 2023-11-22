package mobile.com.backend.service;

import mobile.com.backend.dto.reponse.ProductGeneralResponse;
import mobile.com.backend.dto.request.PageParamRequest;
import org.springframework.data.domain.Page;

import java.util.UUID;

public interface ProductService {
  Page<ProductGeneralResponse> getProductPage(PageParamRequest pageParamRequest, String category);

}
