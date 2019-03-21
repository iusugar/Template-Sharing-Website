package se.zust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/21 21:07
 * @description:
 */
@Controller
@RequestMapping("init")
public class InitController {
    @RequestMapping("home")
    public String init(HttpSession session){
//        if (session != null)
//            session.invalidate();

        return "iusugar_home";
    }
}
