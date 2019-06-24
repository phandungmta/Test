/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.BillDAO;

import java.util.List;
import model.Bill;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author PC
 */
@Service
public class BillServiceImpl implements BillService{

     @Autowired
    private BillDAO billDAO;
     
    @Override
    public List<Bill> getBillbyAccountId(int accountId) {
        return billDAO.getBillbyAccountId(accountId);
    }
    
}
