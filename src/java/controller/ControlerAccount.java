package controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import service.CategoryService;
import service.ProductService;
import javax.servlet.http.HttpSession;
import model.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
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
     @RequestMapping(value = "Register.html", method = RequestMethod.GET)
     public String viewRegister(ModelMap mm, HttpSession session) {
        mm.put("listCategory", categoryService.getAll());
        mm.put("listProducer", producerService.getAll());
        mm.put("userForm", new Account());  
        return "pages/Register";
    }
     @RequestMapping(value = "Register.html", method = RequestMethod.POST)
     public String Register(ModelMap mm, HttpSession session,@ModelAttribute("userForm") Account userForm) {
        mm.put("listCategory", categoryService.getAll());
        mm.put("listProducer", producerService.getAll());
        String userNameString= userForm.getUsername();
        if(!accountService.CheckUsername(userNameString)){
        mm.put("messagerRegister", "Trùng tên đăng nhập. Đăng ký thất bại !");
        mm.put("userForm",userForm );  
        return  "pages/Register";
        }
        userForm.setActive("Kích hoạt");
        userForm.setPermission("User");
       
        accountService.create(userForm);
         mm.put("messagerRegister", "Đăng kí thành công!");
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
        return "redirect:/home.html";
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
     
     @InitBinder
public void initBinder(WebDataBinder binder) {
    SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
    
    sdf.setLenient(true);
    binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
}
}
