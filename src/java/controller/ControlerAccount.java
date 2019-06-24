package controller;


import service.CategoryService;
import service.ProductService;
import javax.servlet.http.HttpSession;
import model.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
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
        mm.put("account", new Account());  
        return "pages/Login";
    }
     @RequestMapping(value = "Logout.html", method = RequestMethod.GET)
     public String Logout(ModelMap mm, HttpSession session) {
        mm.put("listCategory", categoryService.getAll());
        mm.put("listProducer", producerService.getAll());
         mm.put("listProductHot", productService.getListHot());
        mm.put("listProductNew", productService.getListNew());
        session.setAttribute("id", 0);
        session.setAttribute("account", null);
        return "pages/index";
    }
    @RequestMapping(value = "Login.html", method = RequestMethod.POST)
     public String CheckLogin(ModelMap mm, @ModelAttribute("account") Account account ,HttpSession session) {
        mm.put("listCategory", categoryService.getAll());
        mm.put("listProducer", producerService.getAll());
             
        Account acc = accountService.CheckLogin(account.getUsername(), account.getPassword());
        if(acc == null){
            
               mm.put("ERRORLogin", "Login False!");
               return "pages/Login";
        }
          mm.put("listProductHot", productService.getListHot());
        mm.put("listProductNew", productService.getListNew());
        
        session.setAttribute("account", acc);
        session.setAttribute("id", (int)1);
       
        return "redirect:/home.html";
    }
}
