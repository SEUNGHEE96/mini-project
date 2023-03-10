package sale;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CartController {

    @Autowired
    @Qualifier("saleservice")
    SaleService service;


    @GetMapping("/cart")
    public ModelAndView cart(HttpSession session) {
        ModelAndView mv = new ModelAndView();

        if (session.getAttribute("loginid") == null) {
            mv.setViewName("user/login");
            return mv;
        }

        int userId = (int)session.getAttribute("loginid");
        int cnt = service.getNumberOfItems(userId);
        List<ItemDTO> items = service.getCartItems(userId);
        int balance = service.getBalance(userId);
        mv.addObject("cnt", cnt);
        mv.addObject("items", items);
        mv.addObject("balance", balance);
        mv.setViewName("cart");
        return mv;
    }

    @ResponseBody
    @DeleteMapping("/cart")
    public boolean deleteCartItem(HttpSession session, int id) {
        if (session.getAttribute("loginid") == null) {
            return false;
        }
        service.deleteCartItem(id);
        return true;
    }

    @PostMapping("/buy")
    public String buyEpisodes(HttpSession session,
        HttpServletRequest request) {
        if (session.getAttribute("loginid") == null) {
            return "user/login";
        }

        Integer userId = (Integer) session.getAttribute("loginid");
        String[] strEpisodeIds = request.getParameterValues("toBuy");
        int[] episodeIds = Arrays.stream(strEpisodeIds).mapToInt(Integer::parseInt).toArray();

        try {
            service.buyEpisodes(userId, episodeIds);
        } catch (Exception e) {
            return "redirect:/cart";
        }
        return "redirect:/mypage";
    }

}
