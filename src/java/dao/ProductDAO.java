
package dao;

import model.Product;
import java.util.List;
/**
 *
 * @author MINAT0
 */
public interface ProductDAO {
    // create
    

    // find by id
    public Product find(String Name);

    // load list product by category
    public List<Product> getListByCategory(int categoryId);
     public List<Product> getListByProducer(int producerId);
    public List<Product> getListByCategoryIDAndProducerName(int categoryId, int producerId);

    // load list product by category and limit
    public List<Product> getListByCategoryAndLimit(long categoryId, int limit);

    // load list product by featured
    public List<Product> getListHot();

    // load list product by sale
    public List<Product> getListNew();

    // load list product by nav
    public List<Product> getListNav(int start, int limit);
    
    // total item
    public int totalItem();
    public boolean create(Product object);
    
}
