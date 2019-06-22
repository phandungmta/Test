
package dao;
import model.Producer;
import java.util.List;
/**
 *
 * @author MINAT0
 */
public interface ProducerDAO {
    public Producer findById(long productId);

    // load list product
    public List<Producer> getAll();
    
}
