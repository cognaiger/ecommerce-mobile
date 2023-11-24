package mobile.com.backend.service;

import co.elastic.clients.elasticsearch._types.query_dsl.FunctionBoostMode;
import lombok.RequiredArgsConstructor;
import mobile.com.backend.document.ProductDocument;
import mobile.com.backend.dto.reponse.ProductGeneralResponse;
import mobile.com.backend.dto.request.PageParamRequest;
import mobile.com.backend.mapper.ProductDocumentMapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.elasticsearch.client.elc.NativeQuery;
import org.springframework.data.elasticsearch.client.elc.NativeQueryBuilder;
import org.springframework.data.elasticsearch.core.ElasticsearchOperations;
import org.springframework.data.elasticsearch.core.SearchHitSupport;
import org.springframework.data.elasticsearch.core.SearchHits;
import org.springframework.data.elasticsearch.core.SearchPage;
import org.springframework.stereotype.Service;


@Service
@RequiredArgsConstructor
public class ProductService {

  private final ElasticsearchOperations elasticsearchOperations;
  private final ProductDocumentMapper productDocumentMapper;


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
                                .fuzziness("AUTO")
                            )
                        )
//                        .boostMode(FunctionBoostMode.valueOf("SUM")) // You can adjust boost mode based on your needs
                    )
                )
            )
        )
        .withPageable(PageRequest.of(pageParamRequest.getPageNumber(), pageParamRequest.getPageSize()));

    SearchHits<ProductDocument> searchHitsResult = elasticsearchOperations.search(nativeQuery.build(), ProductDocument.class);
    SearchPage<ProductDocument> searchPage = SearchHitSupport.searchPageFor(searchHitsResult, nativeQuery.build().getPageable());

    return searchPage;

  }

}
