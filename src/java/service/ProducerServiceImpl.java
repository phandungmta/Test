package service;

import dao.ProducerDAO;
import model.Producer;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author TVD
 */
@Service
public class ProducerServiceImpl implements ProducerService {

    @Autowired
    private ProducerDAO productDAO;

   

    @Override
    public Producer findById(long productId) {
        return productDAO.findById(productId);
    }

    @Override
    public List<Producer> getAll() {
        return productDAO.getAll();
    }

}
