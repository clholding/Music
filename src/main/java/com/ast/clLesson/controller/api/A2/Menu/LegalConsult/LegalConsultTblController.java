package com.ast.clLesson.controller.api.A2.Menu.LegalConsult;

import com.ast.clLesson.controller.api.A2.Menu.LegalConsult.LegalConsultTblService.LegalConsultTblService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequiredArgsConstructor
public class LegalConsultTblController {

    @Autowired
    LegalConsultTblService legalConsultTblService;

    @PostMapping(value = {"/api/legalConsult/saveArticle"})
    public Map saveArticle(@RequestBody Map<String, Object> req) throws IOException {

        Map<String, Object> params = new HashMap<>();
        params.put("TITLE", req.get("TITLE"));
        params.put("CONTENT", req.get("CONTENT"));
        params.put("VIEWS", req.get("VIEWS"));
        params.put("REG_USER_ID", req.get("REG_USER_ID"));

        int DataList = legalConsultTblService.saveArticle(params);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", DataList);

        return resData;
    }

    @PutMapping(value = {"/api/legalConsult/updateArticle"})
    public Map<String, Object> updateArticle(@RequestBody Map<String, Object> updateArticle) {

        int DataList = legalConsultTblService.updateArticle(updateArticle);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", DataList);

        return resData;
    }

    @PutMapping(value = {"/api/legalConsult/updateArticleViews"})
    public Map<String, Object> updateArticleViews(@RequestBody Map<String, Object> updateArticle) {

        int DataList = legalConsultTblService.updateArticleViews(updateArticle);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", DataList);

        return resData;
    }

    @GetMapping("/api/legalConsult/getArticle")
    public Map<String, Object> getArticle(@RequestParam(value = "id") int id) {

        Map<String, Object> article = legalConsultTblService.getArticle(id);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", article);

        return resData;
    }

    @GetMapping("/api/legalConsult/getArticleList")
    public Map<String, Object> getArticleList(@RequestParam(value = "keyword", required = false) String keyword, @RequestParam(value = "page") int page) {

        Map<String, Object> params = new HashMap<>();
        params.put("keyword", keyword);
        params.put("page", page * 10);

        List<Map<String, Object>> list = legalConsultTblService.getArticleList(params);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", list);

        return resData;
    }

    @GetMapping("/api/legalConsult/getArticleCount")
    public Map<String, Object> getArticleCount(@RequestParam(value = "keyword", required = false) String keyword) {

        int count = legalConsultTblService.getArticleCount(keyword);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("count", count);

        return resData;
    }

    @DeleteMapping("/api/legalConsult/deleteArticle")
    public Map<String, Object> deleteArticle(@RequestParam(value = "id") int id) {

        int data = legalConsultTblService.deleteArticle(id);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", data);

        return resData;
    }
}
