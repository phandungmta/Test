/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import model.Bill;


/**
 *
 * @author PC
 */
public interface BillDAO {
     public List<Bill> getBillbyAccountId(int accountId);
      public boolean create(Bill object);
       public int GetBillIDGenNow();
}
