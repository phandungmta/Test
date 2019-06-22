package service;


import java.util.List;

/**
 *
 * @author TVD
 */
public interface CategoryService {

   public model.Category findById(long categoryId);

    // load list category
    public List<model.Category> getAll();

}
