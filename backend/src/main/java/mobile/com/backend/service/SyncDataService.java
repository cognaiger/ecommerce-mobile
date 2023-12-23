// package mobile.com.backend.service;

// import jakarta.annotation.PostConstruct;
// import jakarta.persistence.PostRemove;
// import jakarta.persistence.PostUpdate;
// import lombok.RequiredArgsConstructor;
// import mobile.com.backend.document.ProductDocument;
// import mobile.com.backend.entity.product.Product;
// import mobile.com.backend.mapper.response.entity.ProductDocumentMapper;
// import mobile.com.backend.repository.elasticsearch.ProductElasticsearchRepository;
// import mobile.com.backend.repository.product.ProductRepository;
// import org.springframework.stereotype.Service;

// import java.util.List;

// @Service
// @RequiredArgsConstructor
// public class SyncDataService {

//   private final ProductElasticsearchRepository productElasticsearchRepository;
//   private final ProductRepository productRepository;
//   private final ProductDocumentMapper productDocumentMapper;

//   @PostConstruct
//   public void syncProduct() {
//     List<Product> products = productRepository.findAll();
//     List<ProductDocument> productDocuments = products.stream().map(productDocumentMapper::toDto).toList();
//     productElasticsearchRepository.deleteAll();
//     productElasticsearchRepository.saveAll(productDocuments);
//   }

//   @PostUpdate
//   public void updateProduct(Product product) {
//     ProductDocument productDocument = productDocumentMapper.toDto(product);
//     productElasticsearchRepository.save(productDocument);
//   }

//   @PostRemove
//   public void deleteProduct(Product product) {
//     ProductDocument productDocument = productDocumentMapper.toDto(product);
//     productElasticsearchRepository.delete(productDocument);
//   }

//   public void createProduct(Product product) {
//     ProductDocument productDocument = productDocumentMapper.toDto(product);
//     productElasticsearchRepository.save(productDocument);
//   }

// }
