package se.zust.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.SessionScope;
import org.springframework.web.servlet.ModelAndView;
import se.zust.entity.Template;
import se.zust.pageModel.Ptemplate;
import se.zust.pageModel.Puser;
import se.zust.service.TemplateServiceI;
import se.zust.service.UserServiceI;
import se.zust.utils.Page;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/23 19:09
 * @description:
 */
@Controller
@RequestMapping("search")
public class SearchController {

    @Autowired
    private TemplateServiceI templateService;

    @Autowired
    private UserServiceI userService;

//    @RequestMapping("BySearchInfo")
//    public String getResult(){
//        return "iusugar_search";
//    }

//    @RequestMapping(value = "bySearchInfo",method = RequestMethod.GET)
//    public ModelAndView getSearchBarResult(String searchInfo){
//
//        if (searchInfo.equals("")){
//            System.out.println("空信息");
//        }
//        ModelAndView modelAndView = new ModelAndView("iusugar_search");
//        List<Ptemplate> list = templateService.listTemplate(searchInfo);
//        modelAndView.addObject("searchTemplateResult",list);
//        return modelAndView;
//    }

    @RequestMapping(value = "bySearchInfo",method = RequestMethod.GET)
    public String pageSearch(HttpSession session,String searchInfo){
        Page page = new Page();
        session.setAttribute("searchInfo",searchInfo);
        List<Ptemplate> list;
        String kind = (String) session.getAttribute("kind");

        if (kind != null){
            list = templateService.listTemplateByType(searchInfo,kind);
        }else if (kind == null){
            session.setAttribute("kind","all");
            list = templateService.listTemplate(searchInfo);
        }else {
            list = templateService.listTemplate(searchInfo);
        }
        if (list == null||list.size()==0){
            Page pageNull = new Page();
            pageNull.setCurrentPage(0);
            pageNull.setDataList(null);
            pageNull.setPageSize(0);
            pageNull.setStar(0);
            pageNull.setTotalPage(0);
            session.setAttribute("paging",pageNull);
            return "iusugar_search";
        }
        session.setAttribute("list",list);
        int pagesize = 12;
        //刚开始的页面为第一页
        if (page.getCurrentPage() == null){
            page.setCurrentPage(1);
        } else {
            page.setCurrentPage(page.getCurrentPage());
        }
        //设置每页数据为十条
        page.setPageSize(pagesize);
        //每页的开始数
        page.setStar((page.getCurrentPage() - 1) * page.getPageSize());
        //list的大小
        int count = list.size();
        //设置总页数
        page.setTotalPage(count % pagesize == 0 ? count / pagesize : count / pagesize + 1);
        //对list进行截取
        page.setDataList(list.subList(page.getStar(),count-page.getStar()>page.getPageSize()?page.getStar()+page.getPageSize():count));
        //设置作用域
        session.setAttribute("paging", page);

        return "iusugar_search";
    }


    @RequestMapping("byPage")
    public String fen(Page page,HttpSession session){
        int pagesize = 12;
        System.out.println("currentPage"+page.getCurrentPage());

        //查询出的list数据
        List<Ptemplate> showdata= (List<Ptemplate>) session.getAttribute("list");
        if (showdata == null){
            return "iusugar_search";
        }
        //刚开始的页面为第一页
        if (page.getCurrentPage() == null){
            page.setCurrentPage(1);
        } else {
            page.setCurrentPage(page.getCurrentPage());
        }
        //设置每页数据为十条
        page.setPageSize(pagesize);

        //每页的开始数
        page.setStar((page.getCurrentPage() - 1) * page.getPageSize());
        //list的大小
        int count = showdata.size();
        //设置总页数
        page.setTotalPage(count % pagesize == 0 ? count / pagesize : count / pagesize + 1);
        //对list进行截取
        page.setDataList(showdata.subList(page.getStar(),count-page.getStar()>page.getPageSize()?page.getStar()+page.getPageSize():count));
        //设置作用域

//        System.out.println("这是pagesize"+page.getPageSize());
//        System.out.println("这是star"+page.getStar());
//        System.out.println("这是count"+count);
//        System.out.println("这是totalPage"+page.getTotalPage());
//        System.out.println("这是page1datalist"+page.getDataList());
        session.setAttribute("paging", page);
        return "iusugar_search";

    }

    @ResponseBody
    @RequestMapping(value = "byKind",method = RequestMethod.GET)
    public String searchByKind(HttpSession session,String kind){

        Page page = new Page();
        String searchInfo = (String) session.getAttribute("searchInfo");
//        System.out.println("kind是"+kind+"searchInfo是"+searchInfo);
        List<Ptemplate> list = templateService.listTemplateByType(searchInfo,kind);
//        System.out.println("list内容"+list);
        if (list == null||list.size()==0){
            Page pageNull = new Page();
            pageNull.setCurrentPage(0);
            pageNull.setDataList(null);
            pageNull.setPageSize(0);
            pageNull.setStar(0);
            pageNull.setTotalPage(0);
            session.setAttribute("kind",kind);
            session.setAttribute("list",list);
            session.setAttribute("paging",pageNull);
            return "false";
        }
        session.setAttribute("list",list);
        int pagesize = 12;
        //刚开始的页面为第一页
        if (page.getCurrentPage() == null){
            page.setCurrentPage(1);
        } else {
            page.setCurrentPage(page.getCurrentPage());
        }
        //设置每页数据为十条
        page.setPageSize(pagesize);
        //每页的开始数
        page.setStar((page.getCurrentPage() - 1) * page.getPageSize());
        //list的大小
        int count = list.size();
        //设置总页数
        page.setTotalPage(count % pagesize == 0 ? count / pagesize : count / pagesize + 1);
        //对list进行截取
        page.setDataList(list.subList(page.getStar(),count-page.getStar()>page.getPageSize()?page.getStar()+page.getPageSize():count));
        //设置作用域
        session.setAttribute("paging", page);
        session.setAttribute("kind",kind);
//        System.out.println("这是pagesize"+page.getPageSize());
//        System.out.println("这是star"+page.getStar());
//        System.out.println("这是count"+count);
//        System.out.println("这是totalPage"+page.getTotalPage());
//        System.out.println("这是page1datalist"+page.getDataList());

        return "true";
    }


    @ResponseBody
    @RequestMapping("latest")
    public String getLatestUpload(HttpSession session){


        List<Ptemplate> list= (List<Ptemplate>) session.getAttribute("list");
        Collections.reverse(list);
        session.setAttribute("list",list);
        session.setAttribute("sort","latest");

        return "success";
    }

    @ResponseBody
    @RequestMapping("default")
    public String getDefaultSort(HttpSession session){

        List<Ptemplate> list= (List<Ptemplate>) session.getAttribute("list");
        Collections.reverse(list);
        session.setAttribute("list",list);
        session.setAttribute("sort","default");

        return "success";
    }


    @RequestMapping(value = "detail",method = RequestMethod.GET)
    public String getFileDetail(int imgId){
        System.out.println("这是get中的imgId"+imgId);
        Ptemplate ptemplate = new Ptemplate();
        ptemplate.setId(imgId);
        return "iusugar_detail";
    }

//    @ResponseBody
//    @RequestMapping(value = "detail",method = RequestMethod.POST)
//    public String getFileDetailById(String imgId){
//        System.out.println("访问成功");
//        return "success";
//    }

//    @ResponseBody
    @RequestMapping("/detail/{imgId}")
    public String getFileDetailById(@PathVariable int imgId,HttpServletRequest request,HttpSession session){
        System.out.println("访问成功，imgId的值为："+imgId);
        Ptemplate ptemplate = templateService.getTemplateById(imgId);
        Puser puser = userService.getUser(ptemplate.getUserId());
        request.setAttribute("tmplDetail",ptemplate);
        request.setAttribute("tmplAuthor",puser);

        return "iusugar_detail";
    }

}
