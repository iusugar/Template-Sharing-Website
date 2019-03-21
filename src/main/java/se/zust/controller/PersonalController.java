package se.zust.controller;

import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import se.zust.pageModel.Ptemplate;
import se.zust.pageModel.Puser;
import se.zust.service.TemplateServiceI;
import se.zust.service.UserServiceI;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Collections;
import java.util.List;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/27 13:57
 * @description:
 */
@Controller
@RequestMapping("personal")
public class PersonalController {

    @Autowired
    private UserServiceI userService;
    @Autowired
    private TemplateServiceI templateService;

    @RequestMapping("userPage")
    public String getPersonalPage(HttpSession session, HttpServletRequest request){
        String account = "";
        if (session.getAttribute("account")!=null){
            account = (String) session.getAttribute("account");
        }
        Puser puser = userService.getUser(account);
        List<Ptemplate> ptemplateList = templateService.listTemplateByUserId(puser.getId());
        Collections.reverse(ptemplateList);
        request.setAttribute("currentUser",puser);
        request.setAttribute("worksList",ptemplateList);

        return "iusugar_userPage_personal";
    }


    @RequestMapping("userMessage")
    public String getUserMessagePage(){
        return "iusugar_userPage_change";
    }

    @ResponseBody
    @RequestMapping(value = "/get_page",method = RequestMethod.GET,produces={"application/json;charset=UTF-8"})
    public String getPersonMessage(HttpSession session){
        String account;
        if (session.getAttribute("account")!= null){
            account= (String) session.getAttribute("account");
        }
        else
            account="";
        Puser puser =  userService.getUser(account);
        System.out.println("这是name"+puser.getName());
        System.out.println("这是id"+puser.getId());
        System.out.println("这是province"+puser.getProvince());
//        Puser puser = new Puser();
//        puser.setBirth(new Date());
//        System.out.println("birth: "+puser.getBirth());
//        System.out.println(JSON.toJSONString(puser));
////        puser.setAccount("123");


        return JSON.toJSONString(puser);
    }
    @RequestMapping("update_page")
    public void updatePersonMessage(Puser puser){
        userService.updateUser(puser);
    }


//    用户页面填充信息
//    @RequestMapping()
//    public void getUserWorks(){
//
//    }
}
