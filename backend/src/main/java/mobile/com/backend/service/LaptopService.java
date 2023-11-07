package mobile.com.backend.service;

import mobile.com.backend.dto.reponse.LaptopGeneralResponse;
import mobile.com.backend.dto.request.LaptopPageFilterRequest;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.entity.Laptop;
import org.springframework.data.domain.Page;

public interface LaptopService {
  Page<LaptopGeneralResponse> getLaptopPage(LaptopPageFilterRequest laptopPageFilterRequest, PageParamRequest pageParamRequest);
}
