package service;

import model.Product;
import java.util.List;

/**
 *
 * @author TVD
 */
public interface ProductService {

     // find by id
    public Product find(String Name);

    // load list product by category
    public List<Product> getListByCategory(int categoryId);
    public List<Product> getListByCategoryIDAndProducerName(int categoryId, int producerId);

    public boolean create(Product object);  


    // load list product by featured
    public List<Product> getListHot();

    // load list product by sale
    public List<Product> getListNew();

    // load list product by nav
    public List<Product> getListNav(int start, int limit);
    
    // total item
    public int totalItem();
}
