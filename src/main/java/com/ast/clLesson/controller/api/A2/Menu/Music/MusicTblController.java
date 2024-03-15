package com.ast.clLesson.controller.api.A2.Menu.Music;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.ast.clLesson.common.AmazonS3UploadService;
import com.ast.clLesson.common.CommonFunc;
import com.ast.clLesson.controller.api.A2.Menu.Music.MusicTblService.MusicTblService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
public class MusicTblController {

    @Autowired
    MusicTblService musicTblService;

    @Autowired
    AmazonS3UploadService s3UploadService;
    
    @Autowired
    private CommonFunc commonFunc;
    
    @PostMapping(value = {"/api/music/saveMusic"})
    public Map saveMusic(MultipartHttpServletRequest req) throws IOException {

        final String dirName = "static/MUSIC_FILE_NAME";
        
        Map<String, Object> params = new HashMap<>();
        params.put("TITLE", req.getParameter("TITLE"));
        params.put("NAME", req.getParameter("NAME"));
        params.put("VIEWS", 0);
        params.put("PLAY_YN", req.getParameter("PLAY_YN"));

        Map<String, MultipartFile> files = req.getFileMap();
        List<String> fileNames = new ArrayList<>();

        for (Map.Entry<String, MultipartFile> file : files.entrySet()) {
        	fileNames.add(commonFunc.getAwsFileName(dirName, file.getValue().getOriginalFilename()));
            try {
                s3UploadService.upload(file.getValue(), dirName);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        params.put("FILE", fileNames.toString().replace("[", "").replace("]", ""));
        
        int DataList = musicTblService.saveMusic(params);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", DataList);

        return resData;
    }

    @PostMapping(value = {"/api/music/updateMusic"})
    public Map<String, Object> updateMusic(MultipartHttpServletRequest req) {

        final String dirName = "static/MUSIC_FILE_NAME";
        
        Map<String, Object> params = new HashMap<>();
        params.put("id", req.getParameter("id"));
        params.put("TITLE", req.getParameter("TITLE"));
        params.put("NAME", req.getParameter("NAME"));
        params.put("PLAY_YN", req.getParameter("PLAY_YN"));
        
        Map<String, MultipartFile> files = req.getFileMap();
        List<String> fileNames = new ArrayList<>();

//        System.out.println("=================="+req.getParameter("FILE_"));
//        s3UploadService.deleteFile(req.getParameter("FILE_"));
        
        for (Map.Entry<String, MultipartFile> file : files.entrySet()) {
        	fileNames.add(commonFunc.getAwsFileName(dirName, file.getValue().getOriginalFilename()));
            try {
                s3UploadService.upload(file.getValue(), dirName);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        params.put("FILE", fileNames.toString().replace("[", "").replace("]", ""));
        
        int DataList = musicTblService.updateMusic(params);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", DataList);

        return resData;
    }

    @PutMapping(value = {"/api/music/updateMusicViews"})
    public Map<String, Object> updateMusicViews(@RequestBody Map<String, Object> updateArticle) {

        int DataList = musicTblService.updateMusicViews(updateArticle);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", DataList);

        return resData;
    }

    @GetMapping("/api/music/getMusic")
    public Map<String, Object> getMusic(@RequestParam(value = "id") int id) {

        Map<String, Object> article = musicTblService.getMusic(id);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", article);

        return resData;
    }

    @GetMapping("/api/music/getMusicList")
    public Map<String, Object> getMusicList(@RequestParam(value = "keyword", required = false) String keyword, @RequestParam(value = "page") int page) {

        Map<String, Object> params = new HashMap<>();
        params.put("keyword", keyword);
        params.put("page", page * 10);

        List<Map<String, Object>> list = musicTblService.getMusicList(params);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", list);

        return resData;
    }

    @GetMapping("/api/music/getMusicCount")
    public Map<String, Object> getMusicCount(@RequestParam(value = "keyword", required = false) String keyword) {

        int count = musicTblService.getMusicCount(keyword);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("count", count);

        return resData;
    }

    @DeleteMapping("/api/music/deleteMusic")
    public Map<String, Object> deleteMusic(@RequestParam(value = "id") int id) {

        int data = musicTblService.deleteMusic(id);

        Map<String, Object> resData = new HashMap<>();
        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        resData.put("contents", data);

        return resData;
    }
}
