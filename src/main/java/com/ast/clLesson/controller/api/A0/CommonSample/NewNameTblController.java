package com.ast.clLesson.controller.api.A0.CommonSample;


import com.ast.clLesson.controller.api.A0.CommonSample.NewNameTblService.NewNameTblService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequiredArgsConstructor
public class NewNameTblController {

    @Autowired
    NewNameTblService newNameTblService;

    @GetMapping("/api/NewNameGetList")
    public Map<String, Object> getNewNameList(@RequestParam(value = "keyword", required = false) String keyword, @RequestParam(value = "page") int page) {

        Map<String, Object> params = new HashMap<>();
        params.put("keyword", keyword);
        params.put("page", page);

        List<Map<String, Object>> list = newNameTblService.getNewNameList(params);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", list);

        return resData;
    }
    @PostMapping(value = {"/api/NewNameSave"})
    public Map saveNewName(@RequestBody Map<String, Object> req) throws IOException {

        Map<String, Object> params = new HashMap<>();
        params.put("TITLE", req.get("TITLE"));

        int DataList = newNameTblService.saveNewName(params);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", DataList);

        return resData;
    }
    @PutMapping(value = {"/api/NewNameUpdate"})
    public Map<String, Object> updateNewName(@RequestBody Map<String, Object> updateNewName) {

        int DataList = newNameTblService.updateNewName(updateNewName);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", DataList);

        return resData;
    }
    @GetMapping("/api/NewNameRemove")
    public Map<String, Object> getNewName(@RequestParam(value = "id") int id) {

        Map<String, Object> newName = newNameTblService.getNewName(id);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", newName);

        return resData;
    }
}
