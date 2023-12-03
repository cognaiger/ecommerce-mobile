package mobile.com.backend.controller;

import lombok.RequiredArgsConstructor;
import mobile.com.backend.dto.product.response.ProductGeneralResponse;
import mobile.com.backend.dto.product.request.LaptopPageRequest;
import mobile.com.backend.service.product.LaptopService;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/v1/category", produces = "application/json")
public class CategoryController {

  private final LaptopService laptopService;

  @GetMapping("/laptops")
  public ResponseEntity<Page<ProductGeneralResponse>> getLaptopPage(
      @RequestBody LaptopPageRequest request) {
    Page<ProductGeneralResponse> laptopPage = laptopService.getLaptopPage(request);
    return new ResponseEntity<>(laptopPage, HttpStatus.OK);
  }



}
