package mobile.com.backend.algolia;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.algolia.search.DefaultSearchClient;
import com.algolia.search.SearchClient;

@Configuration
public class AlgoliaConfig {

    private static final String APPLICATION_ID = "WJRZ2HS9X2";
    private static final String API_KEY = "5819ebb2f541430fbc71f18e23939cf7";

    @Bean
    public SearchClient algoliaSearchClient() {
        return DefaultSearchClient.create(APPLICATION_ID, API_KEY);
    }
}
