package mobile.com.backend.service.impl;

import mobile.com.backend.dto.reponse.ProductGeneralResponse;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.service.ProductService;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class ProductServiceImpl implements ProductService {
  @Override
  public Page<ProductGeneralResponse> getProductPage(PageParamRequest pageParamRequest, String category) {
    return null;
  }

}
