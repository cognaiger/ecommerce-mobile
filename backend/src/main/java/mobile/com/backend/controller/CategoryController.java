package mobile.com.backend.controller;

import lombok.RequiredArgsConstructor;
import mobile.com.backend.dto.reponse.product.LaptopGeneralResponse;
import mobile.com.backend.dto.request.product.LaptopPageFilterRequest;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.service.product.LaptopService;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/v1/c", produces = "application/json")
public class CategoryController {

  private final LaptopService laptopService;

  @GetMapping("/laptops")
  public ResponseEntity<Page<LaptopGeneralResponse>> getLaptopPage(
      LaptopPageFilterRequest request,
      PageParamRequest pageParamRequest) {
    Page<LaptopGeneralResponse> laptopPage = laptopService.getLaptopPage(request, pageParamRequest);
    return new ResponseEntity<>(laptopPage, HttpStatus.OK);
  }



}
