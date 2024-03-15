package com.ast.clLesson.commonAccount.accountController;

import com.ast.clLesson.A1Member.vo.UserVo;
import com.ast.clLesson.common.AmazonS3UploadService;
import com.ast.clLesson.common.mail.MailService;
import com.ast.clLesson.dao.UserDao;
import com.ast.clLesson.dao.commonDao;
import com.ast.clLesson.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@RestController
@RequiredArgsConstructor
public class AccountController {

    @Autowired
    UserService userService;
    @Autowired
    AmazonS3UploadService s3UploadService;
    @Autowired(required = false)
    UserDao userDao;
    @Autowired(required = false)
    commonDao commonDao;
    @Autowired
    MailService mailService;

    @PostMapping("/api/sendVerificationCode")
    public Map sendVerificationCode(@RequestBody Map<String, String> params) {

        Map<String, Object> resData = new HashMap<>();
        Map<String, Object> codeParams = new HashMap<>();
        codeParams.put("USER_ID", params.get("email")); // common mapper 사용
        codeParams.put("userId", params.get("email")); // user mapper 사용

        UserVo existingUser = userDao.getUserAccount(codeParams);
        if (existingUser != null) {
            resData.put("returnCode", "9999");
            resData.put("returnMsg", "이미 사용 중인 이메일입니다");
            return resData;
        }

        String code = UUID.randomUUID().toString().substring(0, 4);
        codeParams.put("code", code);

        Map<String, Object> codeDB = commonDao.findCodeByEmail(codeParams);

        if (codeDB != null) {
            int codeUpdated = commonDao.updateCode(codeParams);
            codeParams.put("codeRes", codeUpdated);
        } else {
            int codeSaved = commonDao.saveCode(codeParams);
            codeParams.put("codeRes", codeSaved);
        }

        if ((Integer)codeParams.get("codeRes") > 0) {

            SimpleMailMessage mailMessage = new SimpleMailMessage();
            mailMessage.setTo(params.get("email"));
            mailMessage.setSubject("Complete Registration!");
            mailMessage.setFrom("ryznbiz@gmail.com");
            mailMessage.setText("사용자 이메일 인증 코드 : " + code);

            mailService.sendConfirmEmail(mailMessage);

            resData.put("returnCode", "200");
            resData.put("returnMsg", "정상");
        } else {
            resData.put("returnCode", "9999");
            resData.put("returnMsg", "코드 발급 실패");
        }
        return resData;
    }

    @PostMapping(value = {"/api/registerUser"})
    public Map saveNewUser(@RequestBody Map<String, String> params) {

        UserVo userVo = new UserVo();
        userVo.setUSER_ID(params.get("USER_ID"));
        userVo.setUSER_NAME(params.get("USER_NAME"));
        userVo.setUSER_EMAIL(params.get("USER_EMAIL"));
        userVo.setUSER_TEL(params.get("USER_TEL"));
        userVo.setUSER_PW(params.get("USER_PW"));
        userVo.setUSER_MEMBER_CODE(params.get("USER_MEMBER_CODE"));

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

    @RequestMapping(value = {"/api/verifyEmail"})
    public Map verifyUserEmail(@RequestBody Map<String, String> params) {

        Map<String, Object> codeParams = new HashMap<>();
        codeParams.put("USER_ID", params.get("email"));
        Map<String, Object> codeDB = commonDao.findCodeByEmail(codeParams);

        Map<String, Object> resData = new HashMap<>();
        if(codeDB.get("CODE").equals(params.get("code"))) {
            resData.put("returnCode", "200");
            resData.put("returnMsg", "정상");
        } else {
            resData.put("returnCode", "9999");
            resData.put("returnMsg", "코드가 올바르지 않습니다");
        }
        return resData;
    }

}
