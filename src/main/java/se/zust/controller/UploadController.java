package se.zust.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import se.zust.entity.Template;
import se.zust.pageModel.Ptemplate;
import se.zust.service.TemplateServiceI;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/25 20:56
 * @description:
 */
@Controller
@RequestMapping("manage")
public class UploadController {

    @Autowired
    private TemplateServiceI templateService;

    @RequestMapping("filePage")
    String getUploadPage(HttpSession session){
        if (session.getAttribute("account")!= null)
            return "iusugar_userPage_manage";
        else return null;
    }



    @ResponseBody
    @RequestMapping("demoUpload")
    public String demoUpload(HttpServletRequest request,HttpSession session) throws IOException {

//        System.out.println("这是上传标记");
        String account = (String) session.getAttribute("account");

        String demoPath = templateService.saveTemplate(request,account,session);

//        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
//        if(multipartResolver.isMultipart(request))
//        {
//            //将request变成多部分request
//            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;
//            //获取multiRequest 中所有的文件名
//            Iterator iter = multiRequest.getFileNames();
//
//            String path1 = "G:/Tomcat 9.0/webapps/template_shop_file/demo/page_demo/ppt";
//            new File(path1).mkdirs();
//
//            while(iter.hasNext())
//            {
//                //一次遍历所有文件
//                MultipartFile file=multiRequest.getFile(iter.next().toString());
//                System.out.println(file.getOriginalFilename());
//                if(file != null)
//                {
//                    String path="G:/Tomcat 9.0/webapps/template_shop_file/demo/page_demo/ppt/"+file.getOriginalFilename();
//                    //上传
//                    file.transferTo(new File(path));
//                }
//
//            }
//
//        }

        return demoPath;
    }

    @RequestMapping("infoUpload")
    public String fileInfoUpload(HttpSession session, @RequestParam(value = "file", required = false) CommonsMultipartFile file[], Ptemplate ptmpl, HttpServletRequest request){


        int index = ptmpl.getPath().lastIndexOf("/");
        String path = ptmpl.getPath().substring(0,index);
        ptmpl.setPath(path);

        String account = (String) session.getAttribute("account");
        ptmpl.setUserAccount(account);

        String tags[] = request.getParameterValues("tag");
        templateService.saveTemplateInfo(ptmpl);
        templateService.saveFileResource(file,path);
        return "redirect:/personal/userPage";
    }
}
