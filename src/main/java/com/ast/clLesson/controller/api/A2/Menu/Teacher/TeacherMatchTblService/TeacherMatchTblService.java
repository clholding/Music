package com.ast.clLesson.controller.api.A2.Menu.Teacher.TeacherMatchTblService;

import com.ast.clLesson.dao.commonDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class TeacherMatchTblService {
    @Autowired
    private commonDao commonDao;

    public int matchTeacher(Map<String, Object> params){
        int list = commonDao.matchTeacher(params);
        return list;
    }

    public List<String> getTeacherMatch(Map<String, Object> params) {
        List<String> list = commonDao.getTeacherMatch(params);
        return list;
    }

    public List<Map<String, Object>> getTeacherMatchList(Map<String, Object> params) {
        List<Map<String, Object>> list = commonDao.getTeacherMatchList(params);
        return list;
    }

    public int getMatchCount(String keyword){
        int count = commonDao.getMatchCount(keyword);
        return count;
    }
}
