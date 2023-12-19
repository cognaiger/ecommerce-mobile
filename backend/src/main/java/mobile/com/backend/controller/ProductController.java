package mobile.com.backend.controller;

import lombok.RequiredArgsConstructor;
import mobile.com.backend.document.ProductDocument;
import mobile.com.backend.dto.reponse.product.LaptopGeneralResponse;
import mobile.com.backend.dto.reponse.product.ProductGeneralResponse;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.entity.product.Laptop;
import mobile.com.backend.entity.product.Product;
import mobile.com.backend.service.product.LaptopService;
import mobile.com.backend.service.product.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
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

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/v1/products", produces = "application/json")
public class ProductController {

  private final LaptopService laptopService;
  private final ProductService productService;
  private SearchClient searchClient;
  private SearchIndex<ProductGeneralResponse> laptopIndex;

  @Autowired
  private mobile.com.backend.service.product.LaptopService LaptopService;

  private final String AlgoliaApplicationID = "WJRZ2HS9X2";
  private final String AlgoliaKey = "6732f5dab75c5982c59538a3c7382eb0";

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
    searchClient = DefaultSearchClient.create(AlgoliaApplicationID, AlgoliaKey);
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

  @GetMapping("/laptops")
  public ResponseEntity<List<LaptopGeneralResponse>> getAllLaptops() {
    List<Laptop> laptops = LaptopService.getAll();
    List<LaptopGeneralResponse> laptopGeneralResponses = new ArrayList<LaptopGeneralResponse>();
    for (Laptop laptop : laptops) {
      UUID currentLaptopId = laptop.getProductId();

      LaptopGeneralResponse laptopGeneralResponse = new LaptopGeneralResponse();
      String laptopName = laptopService.getLaptopName(currentLaptopId);
      String laptopImageLink = laptopService.getLaptopImageLink(currentLaptopId);
      String laptopPrice = laptopService.getLaptopPrice(currentLaptopId);
      laptopGeneralResponse.setName(laptopName);
      laptopGeneralResponse.setImageLink(laptopImageLink);
      laptopGeneralResponse.setPrice(laptopPrice);
      laptopGeneralResponse.setProductId(currentLaptopId);
      laptopGeneralResponses.add(laptopGeneralResponse);
    }
    return ResponseEntity.ok(laptopGeneralResponses);

  }

  

}
