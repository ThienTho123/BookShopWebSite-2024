package org.example.config;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class error implements ErrorController {
    @RequestMapping({"/error"})
    public String errol(){
        return "views/error/error";
    }
    @RequestMapping({"/error?continue"})
    public String loginErrol(){
        return "redirect:/";
    }
}
