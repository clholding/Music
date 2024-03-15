package com.ast.clLesson.service;

import com.ast.clLesson.dao.commonDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CommonService {
    @Autowired
    private commonDao commonDao;

    public int saveArticle(Map<String, Object> params){
        int list = commonDao.saveArticle(params);
        return list;
    }
    public int updatePost(Map<String, Object> params){
        int list = commonDao.updateArticle(params);
        return list;
    }
    public Map<String, Object> getPost(int id){
        Map<String, Object> post = commonDao.getArticle(id);
        return post;
    }
    public List<Map<String, Object>> getArticleList(Map<String, Object> params){
        List<Map<String, Object>> list = commonDao.getArticleList(params);
        return list;
    }
}
