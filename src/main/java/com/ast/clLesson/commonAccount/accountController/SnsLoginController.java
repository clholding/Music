package com.ast.clLesson.commonAccount.accountController;


import com.ast.clLesson.A1Member.vo.UserVo;
import com.ast.clLesson.commonAccount.snsLogin.KakaoApi;
import com.ast.clLesson.commonAccount.snsLogin.NaverApi;
import com.ast.clLesson.dao.UserDao;
import com.ast.clLesson.service.CommonService;
import com.ast.clLesson.service.UserService;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

@Controller
public class SnsLoginController {

    @Autowired
    UserDao userDao;

    KakaoApi kakaoApi = new KakaoApi();
    NaverApi naverApi = new NaverApi();

    @RequestMapping("/loginSns")
    public String loginSns(Model model, HttpServletRequest request) {

        String baseUrl = ServletUriComponentsBuilder.fromRequestUri(request)
                .replacePath(null)
                .build()
                .toUriString();

        model.addAttribute("baseUrl", baseUrl);
        model.addAttribute("kakaoClientId", "4417df83557c1d42fd7b034ff212fda8");

        if (baseUrl.equals("http://localhost:8080")) {
            model.addAttribute("naverClientId", "pAfGdteLZXTEeyvuBHC0");
        } else if (baseUrl.equals("http://3.37.201.82:8080")){
            model.addAttribute("naverClientId", "tvnM2d5tiFEuFwKPnoDs");
        }

        return "A1.Login_Signup/loginSns";
    }

    @RequestMapping(value = "/login/kakao")
    public String loginKakao(Model model, @RequestParam("code") String code, HttpSession session, HttpServletRequest request) {

        String baseUrl = ServletUriComponentsBuilder.fromRequestUri(request)
                .replacePath(null)
                .build()
                .toUriString();

        // 1번 인증코드 요청 전달
        String accessToken = kakaoApi.getAccessToken(code, baseUrl);
        // 2번 인증코드로 토큰 전달
        HashMap<String, Object> userInfo = kakaoApi.getUserInfo(accessToken);

        if (userInfo.get("email") != null) {
            session.setAttribute("userId", userInfo.get("email"));
            session.setAttribute("accessToken", accessToken);
        }

        Map<String, Object> params = new HashMap<>();
        params.put("userId", userInfo.get("email"));
        UserVo userVo = userDao.getUserAccount(params);

        if (userVo == null) {
            model.addAttribute("userEmail", userInfo.get("email"));
            model.addAttribute("userName", userInfo.get("nickname"));
            return "A1.Login_Signup/signup";
        }
        Authentication authentication = new UsernamePasswordAuthenticationToken(userVo, null,
                AuthorityUtils.createAuthorityList("ROLE_ADMIN"));
        SecurityContextHolder.getContext().setAuthentication(authentication);
        return "redirect:/index";
    }

    @RequestMapping(value = "/logoutKakao")
    public String logoutKakao(HttpSession session) {
        String accessToken = (String) session.getAttribute("accessToken");

        if (accessToken != null && !"".equals(accessToken)) {
            kakaoApi.kakaoLogout(accessToken);
            session.removeAttribute("accessToken");
            session.removeAttribute("userId");
        } else {
            System.out.println("accessToken is null");
        }
        return "redirect:/index";
    }

    @RequestMapping(value = "/login/naver")
    public String loginNaver(Model model, @RequestParam("code") String code, @RequestParam("state") String state, HttpServletRequest request) {

        String baseUrl = ServletUriComponentsBuilder.fromRequestUri(request)
                .replacePath(null)
                .build()
                .toUriString();

        String clientId;        //애플리케이션 클라이언트 아이디값";
        String clientSecret;    //애플리케이션 클라이언트 시크릿값";

        if (baseUrl.equals("http://localhost:8080")) {
            clientId = "pAfGdteLZXTEeyvuBHC0";
            clientSecret = "ibXoirFYBP";
        } else {
            clientId = "tvnM2d5tiFEuFwKPnoDs";
            clientSecret = "d8Wd9MV_U_";
        }

        String redirectURI = URLEncoder.encode(baseUrl + "/login/naver", StandardCharsets.UTF_8);
        String apiURL;
        apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";
        apiURL += "client_id=" + clientId;
        apiURL += "&client_secret=" + clientSecret;
        apiURL += "&redirect_uri=" + redirectURI;
        apiURL += "&code=" + code;
        apiURL += "&state=" + state;
        try {
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            con.setRequestMethod("GET");
            int responseCode = con.getResponseCode();
            BufferedReader br;
            System.out.println("responseCode=" + responseCode);
            if (responseCode == 200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer res = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                res.append(inputLine);
            }
            br.close();
            if (responseCode == 200) {

                JsonParser parser = new JsonParser();
                JsonElement element = parser.parse(res.toString());
                String accessToken = element.getAsJsonObject().get("access_token").getAsString();
                HashMap<String, Object> userInfo = naverApi.getUserInfo(accessToken);

                System.out.println(userInfo);

                Map<String, Object> params = new HashMap<>();
                params.put("userId", userInfo.get("email"));
                UserVo userVo = userDao.getUserAccount(params);

                if (userVo == null) {
                    model.addAttribute("userEmail", userInfo.get("email"));
                    model.addAttribute("userName", userInfo.get("name"));
                    return "A1.Login_Signup/signup";
                }
                Authentication authentication = new UsernamePasswordAuthenticationToken(userVo, null,
                        AuthorityUtils.createAuthorityList("ROLE_ADMIN"));
                SecurityContextHolder.getContext().setAuthentication(authentication);
            }
            return "redirect:/index";
        } catch (Exception e) {
            System.out.println(e);
            return "redirect:/index";
        }
    }
}
