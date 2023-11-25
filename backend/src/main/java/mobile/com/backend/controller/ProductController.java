package mobile.com.backend.controller;

import lombok.RequiredArgsConstructor;
import mobile.com.backend.document.ProductDocument;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.service.ProductService;
import org.springframework.data.elasticsearch.core.SearchPage;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/v1/products", produces = "application/json")
public class ProductController {

  private final ProductService productService;

  @GetMapping("/search")
  public ResponseEntity<SearchPage<ProductDocument>> searchProducts(
      @RequestParam String keyword,
      PageParamRequest pageParamRequest
  ) {
    SearchPage<ProductDocument> productPage = productService.searchProducts(pageParamRequest, keyword);
    return ResponseEntity.ok(productPage);
  }

  @GetMapping("/search-suggest")
  public ResponseEntity<List<ProductDocument>> searchSuggestProduct(
      @RequestParam String keyword
  ) {
    return ResponseEntity.ok(productService.getAutoCompleteProduct(keyword));
  }


}
