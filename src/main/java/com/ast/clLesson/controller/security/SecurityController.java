package com.ast.clLesson.controller.security;

import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

@RestController
public class SecurityController {

    @RequestMapping("/sec/userInfo")
    public Map currentUserName(Principal principal)
    {
        Map<String, Object> resData = new HashMap<>();
        Map<String, Object> contents = new HashMap<>();

        resData.put("returnCode", "200");
        resData.put("returnMsg", "정상");
        if(principal != null) {
            contents.put("USER_NAME",principal.getName());
        }
        resData.put("contents", contents);

        return resData;
    }

//    @GetMapping("/user_access")
//    public String userAccess(Model model, Authentication authentication) {
//        //Authentication 객체를 통해 유저 정보를 가져올 수 있다.
//        UserVo userVo = (UserVo) authentication.getPrincipal();  //userDetail 객체를 가져옴
//        model.addAttribute("info", userVo.getUSER_ID() +"의 "+ userVo.getUserName()+ "님");      //유저 아이디
//        return "user_access";
//    }
}
