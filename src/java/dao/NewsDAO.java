/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import model.News;

/**
 *
 * @author PC
 */
public interface NewsDAO {

    public  News findById(int id);

    public List<News> getAll();
    
    public List<News> GetByNewsType( int newsTypeId );
    
    
    
}
