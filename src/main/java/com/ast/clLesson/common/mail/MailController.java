package com.ast.clLesson.common.mail;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequiredArgsConstructor
public class MailController {

    private MailService emailService;

    @Autowired
    public MailController(MailService emailService) {
        this.emailService = emailService;
    }
    @PostMapping("/common/sendMail")
    public void sendMail(@RequestBody Map<String, Object> req) {
        String to = req.get("TO").toString();
        String subject = req.get("SUBJECT").toString();
        String content = req.get("CONTENT").toString();

        emailService.sendEmail(to, subject, content);
    }
}