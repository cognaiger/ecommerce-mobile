package mobile.com.backend.controller;

import lombok.RequiredArgsConstructor;
import mobile.com.backend.dto.reponse.LaptopGeneralResponse;
import mobile.com.backend.dto.request.LaptopPageFilterRequest;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.service.LaptopService;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/v1/c", produces = "application/json")
public class CategoryController {

  private final LaptopService laptopService;

  @GetMapping("/laptop")
  public ResponseEntity<Page<LaptopGeneralResponse>> getLaptopPage(
      LaptopPageFilterRequest request,
      PageParamRequest pageParamRequest
  ) {
    Page<LaptopGeneralResponse> laptopPage = laptopService.getLaptopPage(request, pageParamRequest);
    return new ResponseEntity<>(laptopPage, HttpStatus.OK);
  }
}