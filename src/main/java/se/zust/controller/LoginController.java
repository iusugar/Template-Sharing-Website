package se.zust.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import se.zust.dao.UserDaoI;
import se.zust.service.UserServiceI;

import javax.servlet.http.HttpSession;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/27 13:03
 * @description:
 */
@Controller
@RequestMapping("user")
public class LoginController {

    @Autowired
    UserServiceI userService;

    @ResponseBody
    @RequestMapping("login")
    String getLogin(HttpSession session,String account,String password){

        System.out.println(account+"----"+password);
        boolean flag = userService.existUser(account,password);
            if (flag == true){
            session.setAttribute("account",account);
            return "true";
        }else
            return "false";

    }
}
