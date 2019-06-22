package service;


import java.util.List;

/**
 *
 * @author TVD
 */
public interface ProducerService {

   public model.Producer findById(long productId);

    // load list product
    public List<model.Producer> getAll();
    

}
