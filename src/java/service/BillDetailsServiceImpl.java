/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.BillDAO;
import dao.BillDetailsDAO;
import java.util.List;
import model.BillDetails;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author PC
 */
public class BillDetailsServiceImpl implements BillDetailsService {
    
     @Autowired
    private BillDetailsDAO billDetailsDAO;

    @Override
    public boolean create(BillDetails object) {
        return   billDetailsDAO.create(object);
    }

    @Override
    public List<BillDetails> getBillDetails(int BillId) {
        return   billDetailsDAO.getBillDetails(BillId); //To change body of generated methods, choose Tools | Templates.
    }
    
}
