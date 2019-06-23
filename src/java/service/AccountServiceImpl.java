/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.AccountDAO;
import dao.CategoryDAO;
import model.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author PC
 */
@Service
public class AccountServiceImpl implements AccountSevice {
     @Autowired
    private AccountDAO accountDAO;

    @Override
    public boolean create(Account object) {
       return  accountDAO.create(object);
    }

    @Override
    public boolean update(Account object) {
       return  accountDAO.update(object);
    }

    @Override
    public Account ShowDetail(int accountId) {
       return  accountDAO.ShowDetail(accountId);
    }

    @Override
    public model.Account CheckLogin(String UsernameString, String Password) {
        return  accountDAO.CheckLogin(UsernameString, Password);
    }
    
}
