package com.ast.clLesson.controller.api.A2.Menu.LegalConsult.LegalConsultTblService;

import com.ast.clLesson.dao.commonDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class LegalConsultTblService {
    @Autowired
    private commonDao commonDao;

    public int saveArticle(Map<String, Object> params){
        int list = commonDao.saveArticle(params);
        return list;
    }
    public int updateArticle(Map<String, Object> params){
        int list = commonDao.updateArticle(params);
        return list;
    }
    public int updateArticleViews(Map<String, Object> params){
        int list = commonDao.updateArticleViews(params);
        return list;
    }
    public Map<String, Object> getArticle(int id){
        Map<String, Object> article = commonDao.getArticle(id);
        return article;
    }
    public List<Map<String, Object>> getArticleList(Map<String, Object> params){
        List<Map<String, Object>> list = commonDao.getArticleList(params);
        return list;
    }
    public int getArticleCount(String keyword){
        int count = commonDao.getArticleCount(keyword);
        return count;
    }
    public int deleteArticle(int id){
        int data = commonDao.deleteArticle(id);
        return data;
    }
}