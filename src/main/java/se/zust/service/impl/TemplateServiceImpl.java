package se.zust.service.impl;

import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Positions;
import org.hibernate.annotations.OptimisticLock;
import org.hibernate.annotations.OptimisticLocking;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import se.zust.dao.TemplateDaoI;
import se.zust.dao.UserDaoI;
import se.zust.entity.Template;
import se.zust.entity.User;
import se.zust.pageModel.Ptemplate;
import se.zust.service.TemplateServiceI;

import javax.imageio.ImageIO;
import javax.management.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.File;
import java.io.IOException;
import java.util.*;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/24 19:20
 * @description:
 */

@Service
public class TemplateServiceImpl implements TemplateServiceI {

    @Autowired
    private TemplateDaoI templateDao;
    @Autowired
    private UserDaoI userDao;

    @Override
    public String saveTemplate(HttpServletRequest request,String account,HttpSession session) throws IOException {

        String hql = "FROM Template t WHERE t.user.account = " + account + " ";
        int order = templateDao.getUserAllTemplate(hql);
        order = order + 1;
        String fileName = "";
//        System.out.println(order);
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        if(multipartResolver.isMultipart(request))
        {
            //将request变成多部分request
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;
            //获取multiRequest 中所有的文件名
            Iterator iter = multiRequest.getFileNames();

            String path1 = "G:/Tomcat 9.0/webapps/template_shop_file/demo/page_demo/ppt/" + account + "/" + order;
            String path2 = "G:/Tomcat 9.0/webapps/template_shop_file/demo/page_demo_detail/ppt/" + account + "/" + order;
            new File(path1).mkdirs();
            new File(path2).mkdirs();

            while(iter.hasNext())
            {
                //一次遍历所有文件
                MultipartFile file=multiRequest.getFile(iter.next().toString());
                MultipartFile detailFile = file;

//                System.out.println(file.getOriginalFilename());
                fileName = file.getOriginalFilename();
                if(file != null)
                {
                    String path="G:/Tomcat 9.0/webapps/template_shop_file/demo/page_demo/ppt/" + account + "/" + order + "/" +file.getOriginalFilename();
                    String detailPath = "G:/Tomcat 9.0/webapps/template_shop_file/demo/page_demo_detail/ppt/" + account + "/" + order + "/" +file.getOriginalFilename();


                    //上传
                    file.transferTo(new File(path));
//                    System.out.println("这是file"+file);
//                    System.out.println("这是detailFile"+detailFile);
                    detailFile.transferTo(new File(detailPath));

                    ImageIcon imageIcon = new ImageIcon(path);
                    int iconWidth = imageIcon.getIconWidth();
                    int iconHeight = imageIcon.getIconHeight();
                    if (iconWidth < 2000){
//                        保存demo 像素250*350
                        Thumbnails.of(path).size(500,700).keepAspectRatio(true).toFile(path);

                        Thumbnails.of(path).sourceRegion(Positions.CENTER, 250, 350)
                                .size(250, 350).keepAspectRatio(false)
                                .toFile(path);
                        Thumbnails.of(path).size(250, 350).keepAspectRatio(false).watermark(Positions.CENTER, ImageIO.read(new File("E:\\iusugar.png")), 0.3f)
                                .outputQuality(1f).toFile(path);

//                        保存demo detail 像素以宽度780为准缩放
                        Thumbnails.of(detailPath).size(780,1450).keepAspectRatio(true).toFile(detailPath);
                        Thumbnails.of(detailPath).size(780, 1450).keepAspectRatio(true).watermark(Positions.CENTER, ImageIO.read(new File("E:\\iusugar.png")), 0.3f)
                                .outputQuality(1f).toFile(detailPath);


                    }else if (iconWidth > 2000){
//                        保存demo
                        Thumbnails.of(path).size(1000,1400).keepAspectRatio(true).toFile(path);

                        Thumbnails.of(path).sourceRegion(Positions.CENTER, 500, 700)
                                .size(250, 350).keepAspectRatio(false)
                                .toFile(path);
                        Thumbnails.of(path).size(250, 350).keepAspectRatio(false).watermark(Positions.CENTER, ImageIO.read(new File("E:\\iusugar.png")), 0.3f)
                                .outputQuality(1f).toFile(path);

//                        保存demo detail 像素以宽度780为准缩放
                        Thumbnails.of(detailPath).size(780,1450).keepAspectRatio(true).toFile(detailPath);
                        Thumbnails.of(detailPath).size(780, 1450).keepAspectRatio(true).watermark(Positions.CENTER, ImageIO.read(new File("E:\\iusugar.png")), 0.3f)
                                .outputQuality(1f).toFile(detailPath);
                    }
                }
            }
        }
        Template template = new Template();
        String demoPath = "ppt/"+account+"/"+order+"/"+fileName;
        template.setPath(demoPath);
        String userHql = "FROM User u WHERE account = '"+ account+ "'";
        User user = userDao.get(userHql);
        template.setUser(user);
        template.setUploadTime(new Date());
        template.setType("ppt");
        template.setStatus(false);
        Ptemplate ptemplate = new Ptemplate();
        BeanUtils.copyProperties(template,ptemplate);
//        session.setAttribute("path",demoPath);
//        session.setAttribute("tmpl",ptemplate);
//        if (!isPathExist("FROM Template t WHERE t.path = '"+relativePath+"'")){
//            templateDao.saveOrUpdate(template);
//        }
        return demoPath;
    }

    @Override
    public void saveTemplateInfo(Ptemplate ptemplate) {
        Template template = new Template();
        BeanUtils.copyProperties(ptemplate,template);
        String hql = "FROM User u WHERE account = :account";
        Map<String,Object> params = new HashMap<>();
        params.put("account",ptemplate.getUserAccount());
        User user = userDao.get(hql,params);
        template.setUser(user);
        template.setUploadTime(new Date());
        templateDao.save(template);
    }

    @Override
    public void saveFileResource(CommonsMultipartFile[] file,String path) {
        String localPath = System.getProperty("catalina.home");
        String realPath = localPath + "/webapps/template_shop_file/source_file/"+path;
        new File(realPath).mkdirs();
        for (int i = 0;i < file.length;i++){
            if (!file[i].isEmpty()){
                String fileName = file[i].getOriginalFilename();
                String realName = fileName.substring(0,fileName.lastIndexOf("."));
                String fileType = fileName.substring(fileName.lastIndexOf("."));
                String newName = realName + fileType;
                File file1 = new File(realPath,newName);
                try {
                    file[i].transferTo(file1);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override
    public Ptemplate getTemplate(Ptemplate ptemplate) {
        return null;
    }

//    文件细节页面展示
    @Override
    public Ptemplate getTemplateById(int imgId) {
        String hql = "FROM Template t WHERE t.id = :imgId";
        Map<String,Object> params = new HashMap<>();
        params.put("imgId",imgId);
        Template template = templateDao.get(hql,params);
        Ptemplate ptemplate = new Ptemplate();
        BeanUtils.copyProperties(template,ptemplate);
        ptemplate.setUserId(template.getUser().getId());
        ptemplate.setUsername(template.getUser().getName());
        File file = new File("G:/Tomcat 9.0/webapps/template_shop_file/demo/page_demo_detail/"+template.getPath());
        File[] fileList = file.listFiles();
        for (int i = 0;i <fileList.length;i++){
            if (fileList[i].isFile()){
//                    fileNameList.add(fileList[i].getName());
                ptemplate.setPath(template.getPath() + "/" + fileList[i].getName());
                break;
            }

        }
        return ptemplate;
    }

    @Override
    public List<Ptemplate> listTemplate(String searchInfo) {
        String hql = "SELECT t FROM Template t WHERE name LIKE '%" + searchInfo + "%' OR description LIKE '%" + searchInfo + "%' ";
        String hql1 = "SELECT t FROM Template t join t.tag tg WHERE  tg.name LIKE '%" + searchInfo + "%' ";
//        String hql = "SELECT t FROM Template t join t.tag tg WHERE t.name LIKE '%" + searchInfo + "%' OR t.description LIKE '%" + searchInfo + "%' OR tg.name LIKE '%" + searchInfo + "%' ";
        List<Template> list1 = templateDao.list(hql1);
        List<Template> list = templateDao.list(hql);
        list.addAll(list1);
//        去重
        for(int i = 0;i < list.size() - 1;i++ )  {
           for (int j = list.size() - 1 ;j > i;j -- )  {
               if (list.get(j).equals(list.get(i))) {
                  list.remove(j);
               }
           }
        }
//        System.out.println(list.get(0).getPath());
//        获取路径下文件名字
        for (int i = 0;i < list.size();i++){
            File file = new File("G:/Tomcat 9.0/webapps/template_shop_file/demo/page_demo/"+list.get(i).getPath());
            File[] fileList = file.listFiles();
            for (int j = 0;j <fileList.length;j++){
                if (fileList[j].isFile()){
//                    fileNameList.add(fileList[i].getName());
                    list.get(i).setPath(list.get(i).getPath() + "/" + fileList[j].getName());
                    break;
                }
//                if (fileList[i].isDirectory()){
//
//                }
            }
        }

        List<Ptemplate> pList = new ArrayList<Ptemplate>();
        if (list != null && list.size() > 0){
            for (Template template : list){
                Ptemplate ptemplate = new Ptemplate();
                BeanUtils.copyProperties(template,ptemplate);
//                System.out.println(ptemplate);
                pList.add(ptemplate);
            }

            return pList;
        }else
            return null;

    }

    @Override
    public List<Ptemplate> listTemplateByType(String searchInfo,String type) {
        String hql;
        if (type.equals("all")){
            System.out.println("这是在service的type"+type);
            hql = "SELECT t FROM Template t WHERE  ( name LIKE '%" + searchInfo + "%' OR description LIKE '%" + searchInfo + "%') ";
        }else{
            hql = "SELECT t FROM Template t WHERE type = '"+ type +"' AND ( name LIKE '%" + searchInfo + "%' OR description LIKE '%" + searchInfo + "%') ";
        }

//        String hql1 = "SELECT Template t FROM t.tag tg join fetch t  WHERE t.type = '"+type+"' AND tg.name LIKE '%" + searchInfo + "%' ";
//        List<Template> list1 = templateDao.list(hql1);
        List<Template> list = templateDao.list(hql);
//        list.addAll(list1);
        for(int i = 0;i < list.size() - 1;i++ )  {
            for (int j = list.size() - 1 ;j > i;j -- )  {
                if (list.get(j).equals(list.get(i))) {
                    list.remove(j);
                }
            }
        }

        for (int i = 0;i < list.size();i++){
            File file = new File("G:/Tomcat 9.0/webapps/template_shop_file/demo/page_demo/"+list.get(i).getPath());
            File[] fileList = file.listFiles();
            for (int j = 0;j <fileList.length;j++){
                if (fileList[j].isFile()){
                    list.get(i).setPath(list.get(i).getPath() + "/" + fileList[j].getName());
                    break;
                }

            }
        }

        List<Ptemplate> pList = new ArrayList<Ptemplate>();
        if (list != null && list.size() > 0){
            for (Template template : list){
                Ptemplate ptemplate = new Ptemplate();
                BeanUtils.copyProperties(template,ptemplate);

                pList.add(ptemplate);
            }

            return pList;
        }else
            return null;
    }

    @Override
    public List<Ptemplate> listTemplateByUserId(int userId) {
        String hql = "from Template t where t.user.id = :userId";
        Map<String,Object> params = new HashMap<>();
        params.put("userId",userId);
        List<Template> list = templateDao.list(hql,params);
        List<Ptemplate> pList = new ArrayList<Ptemplate>();
        if (list != null && list.size() > 0){
            for (Template template : list){
                Ptemplate ptemplate = new Ptemplate();
                BeanUtils.copyProperties(template,ptemplate);
                File file = new File("G:/Tomcat 9.0/webapps/template_shop_file/demo/page_demo/"+ptemplate.getPath());
                File[] fileList = file.listFiles();
                for (int j = 0;j <fileList.length;j++){
                    if (fileList[j].isFile()){
                        ptemplate.setPath(ptemplate.getPath() + "/" + fileList[j].getName());
                        break;
                    }

                }
                pList.add(ptemplate);
            }

            return pList;
        }else{
            return null;
        }
    }

    @Override
    public boolean isPathExist(String hql) {
        Template t =  templateDao.get(hql);
//        System.out.println(t);
        if (t != null){
            return true;
        }
        return false;
    }


}
