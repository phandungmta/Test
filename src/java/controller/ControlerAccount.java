package controller;


import service.CategoryService;
import service.ProductService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import service.AccountSevice;
import service.ProducerService;

/**
 *
 * @author Minato
 */
@Controller
@RequestMapping(value = "Account")
public class ControlerAccount {
      @Autowired
   private ProducerService producerService ;

    @Autowired
    private CategoryService categoryService;
    
    @Autowired
    private ProductService productService;
         @Autowired
    private AccountSevice accountService;
         
         @RequestMapping(value = "Login.html", method = RequestMethod.GET)
    public String viewLogin(ModelMap mm, HttpSession session) {
        mm.put("listCategory", categoryService.getAll());
       mm.put("listProducer", producerService.getAll());
      
       
        return "pages/Login";
    }
     public String CheckLogin(ModelMap mm,@RequestParam("username") String username,@RequestParam("password") String password) {
        mm.put("listCategory", categoryService.getAll());
       mm.put("listProducer", producerService.getAll());
      
        
        if(!accountService.CheckLogin(username, password)){
            
               mm.put("ERRORLogin", "Login False!");
               return "pages/Login";
        }
          mm.put("listProductHot", productService.getListHot());
        mm.put("listProductNew", productService.getListNew());
        
       
        return "pages/Login";
    }
}
