package mobile.com.backend.controller;

import lombok.RequiredArgsConstructor;
import mobile.com.backend.document.ProductDocument;
import mobile.com.backend.dto.reponse.product.ProductGeneralResponse;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.entity.product.Product;
import mobile.com.backend.service.product.ProductService;
import org.springframework.data.elasticsearch.core.SearchPage;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.algolia.search.DefaultSearchClient;
import com.algolia.search.SearchClient;
import com.algolia.search.SearchIndex;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/v1/products", produces = "application/json")
public class ProductController {

  private final ProductService productService;
  private SearchClient searchClient;
  private SearchIndex<ProductGeneralResponse> laptopIndex;

  @GetMapping("/search")
  public ResponseEntity<SearchPage<ProductDocument>> searchProducts(
      @RequestParam String keyword,
      PageParamRequest pageParamRequest) {
    SearchPage<ProductDocument> productPage = productService.searchProducts(pageParamRequest, keyword);
    return ResponseEntity.ok(productPage);
  }

  @GetMapping("/search-suggest")
  public ResponseEntity<List<ProductDocument>> searchSuggestProduct(
      @RequestParam String keyword) {
    return ResponseEntity.ok(productService.getAutoCompleteProduct(keyword));
  }

  @GetMapping
  public ResponseEntity<List<Product>> getAllProducts() {
    List<Product> products = productService.getAll();
    return ResponseEntity.ok(products);
  }

  @GetMapping("/algolia")
  public ResponseEntity<String> indexLaptop() {
    searchClient = DefaultSearchClient.create("WJRZ2HS9X2", "6732f5dab75c5982c59538a3c7382eb0");
    laptopIndex = searchClient.initIndex("laptopIndex", ProductGeneralResponse.class);
    System.out.println("indexing laptop");
    // Configure index settings (e.g., attributes to index, custom ranking, etc.)
    List<Product> products = productService.getAll();
    List<ProductGeneralResponse> productGeneralResponses = products.stream()
        .map(product -> convertToProductGeneralResponse(product)).collect(Collectors.toList());
    for (ProductGeneralResponse productGeneralResponse : productGeneralResponses) {
      if (productGeneralResponse != null) {
        laptopIndex.saveObject(productGeneralResponse).waitTask();
      }
    }
    return ResponseEntity.ok("Indexed!");
  }

  private ProductGeneralResponse convertToProductGeneralResponse(Product product) {
    ProductGeneralResponse productGeneralResponse = new ProductGeneralResponse();
    productGeneralResponse.setProductId(product.getProductId());
    productGeneralResponse.setName(product.getName());
    productGeneralResponse.setImageLink(product.getImageLink());
    productGeneralResponse.setDescription(product.getDescription());
    productGeneralResponse.setPrice(product.getPrice());
    productGeneralResponse.setQuantity(product.getQuantity());
    return productGeneralResponse;

  }

  @GetMapping("/{productId}")
  public ResponseEntity<Product> productDetails(@PathVariable UUID productId) {
    Product product = productService.findById(productId);
    return ResponseEntity.ok(product);
  }
}
