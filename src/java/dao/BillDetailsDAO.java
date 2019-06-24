/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import model.BillDetails;
import model.Category;

/**
 *
 * @author PC
 */
public interface BillDetailsDAO {
    public List<BillDetails> getBillbyAccountId(int accountId);
}
