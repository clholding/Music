package com.ast.clLesson.controller;

import com.ast.clLesson.A1Member.vo.UserVo;
import com.ast.clLesson.dao.UserDao;
import com.ast.clLesson.service.UserService;
import com.ast.clLesson.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;


@Controller
public class BaseController {

    @Autowired
    CommonService commonService;

    @Autowired
    UserService userService;

    @Autowired
    UserDao userDao;

    @RequestMapping("/")
    public String root(Model model, Principal principal) {
        if (principal != null) {
            model.addAttribute("name", principal.getName());
        }
        return "index";
    }

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/signUp")
    public String signUp() {
        return "A1.Login_Signup/signup";
    }

    @RequestMapping("/login")
    public String login() {
        return "A1.Login_Signup/login";
    }

    @PostMapping("/loginSubmit")
    public String loginForm(@RequestParam("username") String username, @RequestParam("password") String password) {
        if (authenticate(username, password)) {
            // 인증 성공한 경우
            return "redirect:/index";
        } else {
            // 인증 실패한 경우
            return "redirect:/login?error";
        }
    }

    // 사용자 인증을 수행하는 메서드
    private boolean authenticate(String username, String password) {
        // 인증 로직 구현
        // 실제로는 데이터베이스나 외부 시스템과의 연동 등을 통해 사용자 인증을 수행해야 합니다.
        // 여기에서는 간단한 예시로 "user"라는 사용자와 "password"라는 비밀번호를 허용하도록 처리하겠습니다.
        return username.equals("1") && password.equals("1");
    }

    @RequestMapping("/legalConsult")
    public String legalConsult() {
        return "A2.Menu/legalConsult/legalConsult";
    }

    @RequestMapping("/legalConsultWrite")
    public String legalConsultWrite() {
        return "A2.Menu/legalConsult/legalConsultWrite";
    }

    @RequestMapping("/legalConsultRead")
    public String legalConsultRead() {
        return "A2.Menu/legalConsult/legalConsultRead";
    }

    @RequestMapping("/legalConsultEdit")
    public String legalConsultEdit() {
        return "A2.Menu/legalConsult/legalConsultEdit";
    }

    @RequestMapping("/music")
    public String music() {
        return "A2.Menu/music/music";
    }

    @RequestMapping("/musicWrite")
    public String musicWrite() {
        return "A2.Menu/music/musicWrite";
    }

    @RequestMapping("/musicRead")
    public String musicRead() {
        return "A2.Menu/music/musicRead";
    }

    @RequestMapping("/musicEdit")
    public String musicEdit() {
        return "A2.Menu/music/musicEdit";
    }
    
    @RequestMapping("/teacherRegist")
    public String teacherRegist(Model model, Authentication authentication) {
        if (authentication != null) {
            UserVo principal = (UserVo) authentication.getPrincipal();

            model.addAttribute("user_pk", principal.getUSER_PK());
            model.addAttribute("user_name", principal.getUSER_NAME());
            model.addAttribute("member_code", principal.getUSER_MEMBER_CODE());
            model.addAttribute("tel", principal.getUSER_TEL());
            model.addAttribute("email", principal.getUSER_EMAIL());

            if (principal.getUSER_MEMBER_CODE().equals("TCHR001")) {
                return "A2.Menu/teacherRegist/teacherRegist";
            } else {
                return "redirect:/index";
            }
        } else {
            return "redirect:/index";
        }
    }

    @RequestMapping("/teacherList")
    public String teacherList() {
        return "A2.Menu/teacherList/teacherList";
    }

    @RequestMapping("/teacherRead")
    public String teacherRead(Model model, Authentication authentication) {
        if (authentication != null) {
            UserVo principal = (UserVo) authentication.getPrincipal();
            model.addAttribute("user_pk", principal.getUSER_PK());
            model.addAttribute("member_code", principal.getUSER_MEMBER_CODE());
        }
        return "A2.Menu/teacherList/teacherRead";
    }

    @RequestMapping("/lessonList") // 레슨 목록
    public String lessonList() {
        return "A2.Menu/lessonList/lessonList";
    }

    @RequestMapping("/lessonInfo") // 레슨 안내
    public String lessonInfo() {
        return "A2.Menu/lessonInfo/lessonInfo";
    }

    @RequestMapping("/myPage")
    public String myPage() {
        return "A1.MyPage/myPage";
    }

    @RequestMapping("/admin")
    public String admin() {
        return "A1.Admin/admin";
    }
    @RequestMapping("/lessonRead")
    public String lessonRead() {
        return "A2.Menu/lessonList/lessonRead";
    }
    @RequestMapping("/lessonPurchase")
    public String lessonPurchase() {
        return "A3.Purchase/purchase";
    }


}
