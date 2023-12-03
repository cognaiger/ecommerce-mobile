package mobile.com.backend.controller;

import com.algolia.search.DefaultSearchClient;
import com.algolia.search.SearchClient;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.algolia.search.SearchClient;
import com.algolia.search.SearchIndex;
import com.algolia.search.models.indexing.Query;
import com.algolia.search.models.indexing.SearchResult;
import com.algolia.search.models.settings.IndexSettings;

import mobile.com.backend.dto.reponse.product.LaptopGeneralResponse;
import mobile.com.backend.dto.reponse.product.ProductGeneralResponse;
import mobile.com.backend.entity.product.Product;
import mobile.com.backend.repository.product.ProductRepository;
import mobile.com.backend.service.product.ProductService;

@Service
public class AlgoliaProductService {

    @Autowired
    private ProductRepository productRepository;

    private SearchClient searchClient;
    private final SearchIndex<ProductGeneralResponse> laptopIndex;

    public AlgoliaProductService() {
        searchClient = DefaultSearchClient.create("WJRZ2HS9X2", "5819ebb2f541430fbc71f18e23939cf7");
        laptopIndex = searchClient.initIndex("laptopIndex", ProductGeneralResponse.class);
    }

    public void indexLaptops() {
        System.out.println("indexing laptop");
        // Configure index settings (e.g., attributes to index, custom ranking, etc.)
        List<Product> products = productRepository.findAll();
        List<ProductGeneralResponse> productGeneralResponses = products.stream()
                .map(product -> convertToProductGeneralResponse(product)).collect(Collectors.toList());
        for (ProductGeneralResponse productGeneralResponse : productGeneralResponses) {
            if (productGeneralResponse != null) {
                laptopIndex.saveObject(productGeneralResponse).waitTask();
            }
        }
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
}
