/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

/**
 *
 * @author PC
 */
public interface AccountSevice {
    public boolean create( model.Account object);

    // update
    public boolean update( model.Account object);

    // delete
   // public boolean delete( model.Account object);

    // find by id
    public  model.Account ShowDetail(int accountId);
    
    public boolean CheckLogin( String UsernameString, String Password);
}
