/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import model.Account;
import model.BillDetails;
import model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.BillDetailsService;
import service.BillService;
import service.CategoryService;
import service.ProductService;
import service.NewsTypeService;
import service.ProducerService;

/**
 *
 * @author PC
 */

@Controller
@RequestMapping(value = "")
public class ControllerBill {
    
     @Autowired
   private ProducerService producerService ;

    @Autowired
    private CategoryService categoryService;
    @Autowired
    private ProductService productService;
    @Autowired
    private BillService billService;
    @Autowired
    private BillDetailsService billDetailsService;
    
     @RequestMapping(value = "myBills.html", method = RequestMethod.GET)
    public String viewBills(ModelMap mm, HttpSession session) {
         Account account = (Account)session.getAttribute("account");
   
        mm.put("listCategory", categoryService.getAll());
       mm.put("listProducer", producerService.getAll());
       mm.put("listBill", billService.getBillbyAccountId(account.getId()));     
        return "pages/MyBills";
    }
     @RequestMapping(value = "BillDetails/{id}.html", method = RequestMethod.GET)
    public String viewDetails(ModelMap mm, @PathVariable("id") int BillId) {
     
     
       
       
       List<BillDetails> list= null;
       
      list = billDetailsService.getBillDetails(BillId);
       
         for (BillDetails item : list) {
             Product product = productService.findById( item.getId().getProductId());
             item.setProduct(product);
         }
       mm.put("listDetails", list); 
          mm.put("listCategory", categoryService.getAll());
       mm.put("listProducer", producerService.getAll());
        return "pages/BillDetails";
    }
}
