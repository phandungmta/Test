/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.BillDAO;
import dao.BillDetailsDAO;
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
    
}
