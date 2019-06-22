
package dao;
import model.Category;
import java.util.List;
/**
 *
 * @author MINAT0
 */
public interface CategoryDAO {
    public Category findById(long categoryId);

    // load list category
    public List<Category> getAll();
    
}
