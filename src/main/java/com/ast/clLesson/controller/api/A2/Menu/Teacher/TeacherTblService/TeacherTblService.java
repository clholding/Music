package com.ast.clLesson.controller.api.A2.Menu.Teacher.TeacherTblService;

import com.ast.clLesson.dao.commonDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class TeacherTblService {
    @Autowired
    private commonDao commonDao;
    public int saveTeacher(Map<String, Object> params){
        int list = commonDao.saveTeacher(params);
        return list;
    }
    public int updateTeacher(Map<String, Object> params){
        int list = commonDao.updateTeacher(params);
        return list;
    }
    public Map<String, Object> getTeacher(int id){
        Map<String, Object> article = commonDao.getTeacher(id);
        return article;
    }
    public List<Map<String, Object>> getTeacherList(Map<String, Object> params){
        List<Map<String, Object>> list = commonDao.getTeacherList(params);
        return list;
    }
    public int getTeacherCount(String keyword){
        int count = commonDao.getTeacherCount(keyword);
        return count;
    }
    public int deleteTeacher(int id){
        int data = commonDao.deleteTeacher(id);
        return data;
    }
}
