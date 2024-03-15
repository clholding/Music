package com.ast.clLesson.controller.api.A2.Menu.Music.MusicTblService;

import com.ast.clLesson.dao.commonDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class MusicTblService {
    @Autowired
    private commonDao commonDao;

    public int saveMusic(Map<String, Object> params){
        int list = commonDao.saveMusic(params);
        return list;
    }
    public int updateMusic(Map<String, Object> params){
        int list = commonDao.updateMusic(params);
        return list;
    }
    public int updateMusicViews(Map<String, Object> params){
        int list = commonDao.updateMusicViews(params);
        return list;
    }
    public Map<String, Object> getMusic(int id){
        Map<String, Object> article = commonDao.getMusic(id);
        return article;
    }
    public List<Map<String, Object>> getMusicList(Map<String, Object> params){
        List<Map<String, Object>> list = commonDao.getMusicList(params);
        return list;
    }
    public int getMusicCount(String keyword){
        int count = commonDao.getMusicCount(keyword);
        return count;
    }
    public int deleteMusic(int id){
        int data = commonDao.deleteMusic(id);
        return data;
    }
}