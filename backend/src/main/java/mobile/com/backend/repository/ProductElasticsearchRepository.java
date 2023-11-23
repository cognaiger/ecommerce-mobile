package mobile.com.backend.repository;

import mobile.com.backend.document.ProductDocument;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface ProductElasticsearchRepository extends ElasticsearchRepository<ProductDocument, UUID> {
}
