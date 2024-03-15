package com.ast.clLesson.controller.error;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErrorBaseController implements ErrorController {

    @RequestMapping("/error")
    public String error() {
        return "A1.ErrorPage/error";
    }

}
