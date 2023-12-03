package mobile.com.backend.algolia;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import mobile.com.backend.controller.AlgoliaProductService;

@RestController
@RequestMapping("/api/v1/algolia")
public class AlgoliaController {


    private AlgoliaProductService algoliaProductService = new AlgoliaProductService();

    @GetMapping
    public ResponseEntity<String> indexLaptop() {
        algoliaProductService.indexLaptops();
        return ResponseEntity.ok("Indexed!");
    }

}
