package controller;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.CategoryService;
import service.ProducerService;
import service.ProductService;

/**
 *
 * @author TVD
 */
@Controller
@RequestMapping(value = "cart")
public class ControllerCart {
     @Autowired
    private ProductService productService;
     @Autowired
    private CategoryService categoryService;
    
    @Autowired
    private ProducerService producerService ;
   
     @RequestMapping(value = "add/{id}.html", method = RequestMethod.GET)
    public String viewAdd(ModelMap mm, HttpSession session, @PathVariable("id") int productId) {
        
        HashMap<Integer, Cart> cartItems = (HashMap<Integer, Cart>) session.getAttribute("myCartItems");
        if (cartItems == null) {
            cartItems = new HashMap<>();
        }
        Product product = productService.findById(productId);
        if (product != null) {
            if (cartItems.containsKey(productId)) {
                Cart item = cartItems.get(productId);
                item.setProduct(product);
                item.setQuantity(item.getQuantity() + 1);
                cartItems.put(productId, item);
            } else {
                Cart item = new Cart();
                item.setProduct(product);
                item.setQuantity(1);
                cartItems.put(productId, item);
            }
        }
        mm.put("listCategory", categoryService.getAll());
        mm.put("listProducer", producerService.getAll());
        session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        session.setAttribute("myCartNum", cartItems.size());
        return "pages/Cart";
    }
     public double totalPrice(HashMap<Integer, Cart> cartItems) {
        int count = 0;
        count = cartItems.entrySet().stream().map((list) -> list.getValue().getProduct().getPrice() * list.getValue().getQuantity()).reduce(count, Integer::sum);
        return count;
    }
    
}
