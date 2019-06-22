package service;

import dao.CategoryDAO;
import model.Category;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author TVD
 */
@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryDAO categoryDAO;

   

    @Override
    public Category findById(long categoryId) {
        return categoryDAO.findById(categoryId);
    }

    @Override
    public List<Category> getAll() {
        return categoryDAO.getAll();
    }

}
