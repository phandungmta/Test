/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;


import dao.NewsTypeDAO;
import java.util.List;
import model.NewsType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author PC
 */
@Service
public class NewsTypeServiceImpl implements NewsTypeService{
       @Autowired
    private NewsTypeDAO newsTypeDAO;

    @Override
    public List<NewsType> getAll() {
       return newsTypeDAO.getAll();
    }
    
}
