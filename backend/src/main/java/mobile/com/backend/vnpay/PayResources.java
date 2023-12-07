package mobile.com.backend.vnpay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import jakarta.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;

@RestController
@RequestMapping("/api/vnpay")
public class PayResources {
    final PayService payService;

    public PayResources(PayService payService) {
        this.payService = payService;
    }

    @PostMapping("/pay")
    public String pay(@RequestBody PayModel payModel, HttpServletRequest request) {
        try {
            String returnUrl = payService.payWithVNPAY(payModel, request);;
            System.out.println();
            return returnUrl;
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }
}