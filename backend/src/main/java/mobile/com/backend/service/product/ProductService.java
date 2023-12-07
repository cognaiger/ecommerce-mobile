package mobile.com.backend.service.product;

import lombok.RequiredArgsConstructor;
import mobile.com.backend.document.ProductDocument;
import mobile.com.backend.dto.reponse.product.ProductGeneralResponse;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.entity.product.Product;
import mobile.com.backend.mapper.response.entity.ProductDocumentMapper;
import mobile.com.backend.repository.product.ProductRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.elasticsearch.client.elc.NativeQuery;
import org.springframework.data.elasticsearch.client.elc.NativeQueryBuilder;
import org.springframework.data.elasticsearch.core.*;
import org.springframework.data.elasticsearch.core.query.FetchSourceFilter;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ElasticsearchOperations elasticsearchOperations;
    private final ProductDocumentMapper productDocumentMapper;
    @Autowired
    private ProductRepository productRepository;

    public long getProductCount() {
        return productRepository.count();
    }

    public Page<ProductGeneralResponse> getProductPage(PageParamRequest pageParamRequest, String category) {
        return null;
    }

    public SearchPage<ProductDocument> searchProducts(PageParamRequest pageParamRequest, String keyword) {
        NativeQueryBuilder nativeQuery = NativeQuery.builder()
                .withQuery(q -> q
                        .bool(b -> b
                                .should(s -> s
                                        .functionScore(fs -> fs
                                                .query(qq -> qq
                                                        .multiMatch(m -> m
                                                                .fields("name^3.0", "description^1.0")
                                                                .query(keyword)
                                                                .fuzziness("AUTO")))
                                        // .boostMode(FunctionBoostMode.valueOf("SUM")) // You can adjust boost mode
                                        // based on your needs
                                        ))))
                .withPageable(PageRequest.of(pageParamRequest.getPageNumber(), pageParamRequest.getPageSize()));

        SearchHits<ProductDocument> searchHitsResult = elasticsearchOperations.search(nativeQuery.build(),
                ProductDocument.class);
        SearchPage<ProductDocument> searchPage = SearchHitSupport.searchPageFor(searchHitsResult,
                nativeQuery.build().getPageable());

        return searchPage;
    }

    public List<ProductDocument> getAutoCompleteProduct(String keyword) {
        NativeQuery matchQuery = NativeQuery.builder()
                .withQuery(
                        q -> q.matchPhrasePrefix(
                                mPP -> mPP.field("name").query(keyword)))
                // .withSourceFilter(
                // new FetchSourceFilter(
                // new String[]{"name"}, null
                // )
                // )
                .build();

        SearchHits<ProductDocument> searchHits = elasticsearchOperations.search(matchQuery, ProductDocument.class);
        List<ProductDocument> productDocuments = searchHits.stream().map(SearchHit::getContent).toList();

        return productDocuments;
    }

    public List<Product> getAll() {
        return productRepository.findAll();
    }

    public Product findById(UUID productId) {
        return productRepository.findByProductId(productId);
    }

}
