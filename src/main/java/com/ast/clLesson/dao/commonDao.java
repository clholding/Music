package com.ast.clLesson.dao;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository
public interface commonDao {

    Map<String, Object> findCodeByEmail(Map<String, Object> params);
    int saveCode(Map<String, Object> params);
    int updateCode(Map<String, Object> params);

    int saveArticle(Map<String, Object> params);
    int updateArticle(Map<String, Object> params);
    int updateArticleViews(Map<String, Object> params);
    Map<String, Object> getArticle(int id);
    List<Map<String, Object>> getArticleList(Map<String, Object> params);
    int getArticleCount(String keyword);
    int deleteArticle(int id);

    int saveMusic(Map<String, Object> params);
    int updateMusic(Map<String, Object> params);
    int updateMusicViews(Map<String, Object> params);
    Map<String, Object> getMusic(int id);
    List<Map<String, Object>> getMusicList(Map<String, Object> params);
    int getMusicCount(String keyword);
    int deleteMusic(int id);
    
    int saveTeacher(Map<String, Object> params);
    int updateTeacher(Map<String, Object> params);
    Map<String, Object> getTeacher(int id);
    List<Map<String, Object>> getTeacherList(Map<String, Object> params);
    int getTeacherCount(String keyword);
    int deleteTeacher(int id);

    int matchTeacher(Map<String, Object> params);
    List<String> getTeacherMatch(Map<String, Object> params);
    List<Map<String, Object>> getTeacherMatchList(Map<String, Object> params);
    int getMatchCount(String keyword);
}
