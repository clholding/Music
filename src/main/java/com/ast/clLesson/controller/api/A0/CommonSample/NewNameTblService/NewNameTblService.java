package com.ast.clLesson.controller.api.A0.CommonSample.NewNameTblService;

import com.ast.clLesson.dao.commonDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class NewNameTblService {
    @Autowired
    private commonDao commonDao;

    public int saveNewName(Map<String, Object> params){
        int list = commonDao.saveArticle(params);
        return list;
    }
    public int updateNewName(Map<String, Object> params){
        int list = commonDao.updateArticle(params);
        return list;
    }
    public Map<String, Object> getNewName(int id){
        Map<String, Object> newName = commonDao.getArticle(id);
        return newName;
    }
    public List<Map<String, Object>> getNewNameList(Map<String, Object> params){
        List<Map<String, Object>> list = commonDao.getArticleList(params);
        return list;
    }
}
