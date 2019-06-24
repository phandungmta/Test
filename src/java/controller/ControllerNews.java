/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.AccountSevice;
import service.CategoryService;
import service.NewsService;
import service.NewsTypeService;
import service.ProducerService;
import service.ProductService;

/**
 *
 * @author PC
 */
@Controller
@RequestMapping(value = "")
public class ControllerNews {
    @Autowired
   private ProducerService producerService ;

    @Autowired
    private CategoryService categoryService;
    
    @Autowired
    private NewsService newsService;
    @Autowired
    private NewsTypeService newsTypeService;
    
    @RequestMapping(value = "news.html", method = RequestMethod.GET)
    public String viewNews(ModelMap mm, HttpSession session) {
   
        mm.put("listCategory", categoryService.getAll());
       mm.put("listProducer", producerService.getAll());
       mm.put("listNews", newsService.getAll());
        mm.put("listNewsType", newsTypeService.getAll());
      
       
        return "pages/news";
    }
    
     @RequestMapping(value = "newsType/{id}.html", method = RequestMethod.GET)
    public String viewNewsInType(ModelMap mm, HttpSession session,@PathVariable("id") int newsTypeId) {
   
        mm.put("listCategory", categoryService.getAll());
       mm.put("listProducer", producerService.getAll());
        mm.put("listNews", newsService.GetByNewsType(newsTypeId));
        mm.put("listNewsType", newsTypeService.getAll());
       
        return "pages/news";
    }
     @RequestMapping(value = "newsDetail/{id}.html", method = RequestMethod.GET)
    public String viewNewsDetail(ModelMap mm, HttpSession session,@PathVariable("id") int id) {
   
        mm.put("listCategory", categoryService.getAll());
       mm.put("listProducer", producerService.getAll());
        mm.put("newsDetail", newsService.findById(id));
    
       
        return "pages/newsDetail";
    }
    
    
}
