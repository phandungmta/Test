/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import java.util.List;
import model.BillDetails;

/**
 *
 * @author PC
 */
public interface BillDetailsService {
    public boolean create(BillDetails object);
    public List<BillDetails> getBillDetails(int BillId);
}
