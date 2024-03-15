/*
package com.ast.clLesson.controller.api;

import com.ast.clLesson.A1Member.vo.UserVo;
import com.ast.clLesson.common.AmazonS3UploadService;
import com.ast.clLesson.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequiredArgsConstructor
public class UserController {

    @Autowired
    UserService userService;
    @Autowired
    AmazonS3UploadService s3UploadService;


    @PostMapping(value = {"/api/registerUser"})
    public Map saveNewUser(@RequestBody Map<String, String> params) {

        UserVo userVo = new UserVo();
        userVo.setUSER_ID(params.get("USER_ID"));
        userVo.setUSER_NAME(params.get("USER_NAME"));
        userVo.setUSER_EMAIL(params.get("USER_EMAIL"));
        userVo.setUSER_TEL(params.get("USER_TEL"));
        userVo.setUSER_PW(params.get("USER_PW"));

        int DataList = userService.registerUser(userVo);

        Map<String, Object> resData = new HashMap<>();
        if(DataList > 0){
            resData.put("returnCode", "200");
            resData.put("returnMsg", "정상");
        } else {
            resData.put("returnCode", "9999");
            resData.put("returnMsg", "에러");
        }
        return resData;
    }

}
*/
