/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.CategoryDAO;
import dao.NewsDAO;
import java.util.List;
import model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author PC
 */
@Service
public class NewsServiceImpl implements NewsService{
    @Autowired
    private NewsDAO newsDAO;

    @Override
    public News findById(int id) {
        return newsDAO.findById(id);
    }

    @Override
    public List<News> getAll() {
        return newsDAO.getAll();
    }

    @Override
    public List<News> GetByNewsType(int newsTypeId) {
        return newsDAO.GetByNewsType(newsTypeId);
    }
    
}
