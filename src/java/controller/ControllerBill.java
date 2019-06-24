/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.http.HttpSession;
import model.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.BillService;
import service.CategoryService;
import service.NewsService;
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
    private BillService billService;

    
     @RequestMapping(value = "myBills.html", method = RequestMethod.GET)
    public String viewNews(ModelMap mm, HttpSession session) {
         Account account = (Account)session.getAttribute("account");
   
        mm.put("listCategory", categoryService.getAll());
       mm.put("listProducer", producerService.getAll());
       mm.put("listBill", billService.getBillbyAccountId(account.getId()));
     
      
       
        return "pages/MyBills";
    }
    
}
