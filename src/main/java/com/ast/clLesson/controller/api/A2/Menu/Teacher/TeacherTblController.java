package com.ast.clLesson.controller.api.A2.Menu.Teacher;


import com.ast.clLesson.common.AmazonS3UploadService;
import com.ast.clLesson.common.CommonFunc;
import com.ast.clLesson.controller.api.A2.Menu.Teacher.TeacherTblService.TeacherTblService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequiredArgsConstructor
public class TeacherTblController {

    @Autowired
    TeacherTblService teacherTblService;
    @Autowired
    AmazonS3UploadService s3UploadService;
    @Autowired
    private CommonFunc commonFunc;

    @GetMapping("/api/getTeacherList")
    public Map<String, Object> getTeacherList(@RequestParam(value = "keyword", required = false) String keyword, @RequestParam(value = "page") int page) {

        Map<String, Object> params = new HashMap<>();
        params.put("keyword", keyword);
        params.put("page", page);

        List<Map<String, Object>> list = teacherTblService.getTeacherList(params);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", list);

        return resData;
    }

    @PostMapping(value = {"/api/saveTeacher"})
    public Map saveTeacher(MultipartHttpServletRequest req) throws IOException {

        final String dirName = "static/PROFILE_FILE_NAME";

        Map<String, Object> params = new HashMap<>();
        params.put("USER_PK",req.getParameter("USER_PK"));
        params.put("NAME",req.getParameter("NAME"));
        params.put("SELF_INTRO",req.getParameter("SELF_INTRO"));
        params.put("TEL",req.getParameter("TEL"));
        params.put("EMAIL",req.getParameter("EMAIL"));
        params.put("EXPERTISE",req.getParameter("EXPERTISE"));
        params.put("EDUCATION",req.getParameter("EDUCATION"));
        params.put("LESSON_TYPE",req.getParameter("LESSON_TYPE"));
        params.put("LESSON_PRICE",req.getParameter("LESSON_PRICE"));
        params.put("LESSON_DETAIL",req.getParameter("LESSON_DETAIL"));
        MultipartFile file = req.getFile("file");
        if(file != null){
            params.put("ORIGINAL_FILE_NAME", file.getOriginalFilename());
            params.put("AWS_FILE_NAME", commonFunc.getAwsFileName(dirName, file.getOriginalFilename()));
            // AWS 이미지 저장
            s3UploadService.upload(file, dirName);
        } else {
            params.put("ORIGINAL_FILE_NAME", "");
            params.put("AWS_FILE_NAME", "");
        }

        int DataList = teacherTblService.saveTeacher(params);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", DataList);

        return resData;
    }

    @PutMapping(value = {"/api/updateTeacher"})
    public Map<String, Object> updateTeacher(@RequestBody Map<String, Object> updateTeacher) {

        int DataList = teacherTblService.updateTeacher(updateTeacher);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", DataList);

        return resData;
    }

    @GetMapping("/api/getTeacher")
    public Map<String, Object> getTeacher(@RequestParam(value = "id") int id) {

        Map<String, Object> teacher = teacherTblService.getTeacher(id);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", teacher);

        return resData;
    }

    @GetMapping("/api/getTeacherCount")
    public Map<String, Object> getTeacherCount(@RequestParam(value = "keyword", required = false) String keyword) {

        int count = teacherTblService.getTeacherCount(keyword);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("count", count);

        return resData;
    }

    @DeleteMapping("/api/deleteTeacher")
    public Map<String, Object> deleteTeacher(@RequestParam(value = "id") int id) {

        int data = teacherTblService.deleteTeacher(id);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", data);

        return resData;
    }
}
