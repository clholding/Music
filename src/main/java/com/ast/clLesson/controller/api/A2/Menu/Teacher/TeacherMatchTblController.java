package com.ast.clLesson.controller.api.A2.Menu.Teacher;

import com.ast.clLesson.controller.api.A2.Menu.Teacher.TeacherMatchTblService.TeacherMatchTblService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequiredArgsConstructor
public class TeacherMatchTblController {

    @Autowired
    TeacherMatchTblService teacherMatchTblService;

    @PostMapping(value = {"/api/matchTeacher"})
    public Map matchTeacher(@RequestBody Map<String, Object> req) throws IOException {

        Map<String, Object> params = new HashMap<>();
        params.put("TEACHER_PK", req.get("TEACHER_PK"));
        params.put("USER_PK", req.get("USER_PK"));

        List<String> matchedUsers = teacherMatchTblService.getTeacherMatch(params);

        Map<String, Object> resData = new HashMap<>();

        if (matchedUsers.contains(req.get("USER_PK"))) {
            Map<String, Object> error = new HashMap<>();
            error.put("error", "이미 매칭이 되었습니다.");
            List<Object> contents = new ArrayList<>();
            contents.add(error);
            resData.put("returnCode", "500");
            resData.put("contents", contents);
        } else {
            int DataList = teacherMatchTblService.matchTeacher(params);
            resData.put("returnCode", "200");
            resData.put("returnMsg", "정상");
            resData.put("contents", DataList);
        }
        return resData;
    }

    /** Checks users who have been already matched with this teacher **/
    @GetMapping("/api/getTeacherMatch")
    public Map<String, Object> getTeacherMatch(@RequestParam(value = "teacher_pk") String teacher_pk) {

        Map<String, Object> params = new HashMap<>();
        params.put("TEACHER_PK", teacher_pk);
        List<String> list = teacherMatchTblService.getTeacherMatch(params);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", list);

        return resData;
    }

    @GetMapping("/api/getTeacherMatchList")
    public Map getTeacherMatchList(@RequestParam(value = "keyword", required = false) String keyword, @RequestParam(value = "page") int page) {

        Map<String, Object> params = new HashMap<>();
        params.put("keyword", keyword);
        params.put("page", page);

        List<Map<String, Object>> list = teacherMatchTblService.getTeacherMatchList(params);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", list);

        return resData;
    }

    @GetMapping("/api/getMatchCount")
    public Map<String, Object> getArticleCount(@RequestParam(value = "keyword", required = false) String keyword) {

        int count = teacherMatchTblService.getMatchCount(keyword);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("count", count);

        return resData;
    }
}
