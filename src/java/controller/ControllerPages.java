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
import service.ProducerService;

/**
 *
 * @author Minato
 */
@Controller
@RequestMapping(value = "")
public class ControllerPages {

   @Autowired
   private ProducerService producerService ;

    @Autowired
    private CategoryService categoryService;
    
    @Autowired
    private ProductService productService;

    @RequestMapping(value = "home.html", method = RequestMethod.GET)
    public String viewHome(ModelMap mm, HttpSession session) {
        mm.put("listCategory", categoryService.getAll());
       mm.put("listProducer", producerService.getAll());
        mm.put("listProductHot", productService.getListHot());
        mm.put("listProductNew", productService.getListNew());
       
        return "pages/index";
    }

    @RequestMapping(value = "about.html", method = RequestMethod.GET)
    public String viewAbout(ModelMap mm) {
        return "pages/about";
    }

    @RequestMapping(value = "shop.html", method = RequestMethod.GET)
    public String viewShop(ModelMap mm) {
   
        return "pages/shop";
    }

    @RequestMapping(value = "contact.html", method = RequestMethod.GET)
    public String viewContact(ModelMap mm) {
        return "pages/contact";
    }

    @RequestMapping(value = "category/{id}.html", method = RequestMethod.GET)
    public String viewProductCat(ModelMap mm, @PathVariable("id") int categoryId) {
        
       mm.put("listCategory", categoryService.getAll());
       mm.put("listProducer", producerService.getAll());
        mm.put("listProduct", productService.getListByCategory(categoryId));
        return "pages/detailShop";
    }
    @RequestMapping(value = "/search")
    public String Search(ModelMap mm,@RequestParam("name") String name) {
        
       mm.put("listCategory", categoryService.getAll());
       mm.put("listProducer", producerService.getAll());
        mm.put("listProduct", productService.find(name));
        return "pages/detailShop";
    }
    @RequestMapping(value = "producer/{id}.html", method = RequestMethod.GET)
    public String viewProductPro(ModelMap mm, @PathVariable("id") int producerId) {
        
       mm.put("listCategory", categoryService.getAll());
       mm.put("listProducer", producerService.getAll());
        mm.put("listProduct", productService.getListByProducer(producerId));
        return "pages/detailShop";
    }
    @RequestMapping(value = "/product/category", method = RequestMethod.GET, params = {"categoryid","producerid"})
    public String viewProduct(ModelMap mm, @RequestParam(value="categoryid", required = true) int  categoryid ,@RequestParam(value="producerid", required = true) int  producerid) {
        mm.put("listCategory", categoryService.getAll());
       mm.put("listProducer", producerService.getAll());
        mm.put("listProduct", productService.getListByCategoryIDAndProducer(categoryid, producerid));
        return "pages/detailShop";       
    }
    
    @RequestMapping(value = "product/{id}.html", method = RequestMethod.GET)
    public String viewProduct(ModelMap mm,  @PathVariable("id") int productId) {
        mm.put("listCategory", categoryService.getAll());
       mm.put("listProducer", producerService.getAll());
        mm.put("product", productService.findById(productId));
        return "pages/ProductDetail";
    }
    @RequestMapping(value = "cart.html", method = RequestMethod.GET)
    public String viewCart(ModelMap mm, HttpSession session) {
     
//        showMyCart(session);
        return "pages/cart";
    }
    
//    @RequestMapping(value = "checkout.html", method = RequestMethod.GET)
//    public String viewCheckout(ModelMap mm, HttpSession session) {
//     
//        showMyCart(session);
//     
//        return "pages/checkout";
//    }

//    private void showMyCart(HttpSession session) {
//        HashMap<Long, Cart> cartItems = (HashMap<Long, Cart>) session.getAttribute("myCartItems");
//        if (cartItems == null) {
//            cartItems = new HashMap<>();
//        }
//        double count = 0;
//        for (Map.Entry<Long, Cart> list : cartItems.entrySet()) {
//            count += list.getValue().getProduct().getProductPrice() * list.getValue().getQuantity();
//        }
//        session.setAttribute("myCartItems", cartItems);
//        session.setAttribute("myCartTotal", count);
//        session.setAttribute("myCartNum", cartItems.size());
//    }

}
