package se.zust.service;

import org.springframework.web.multipart.commons.CommonsMultipartFile;
import se.zust.pageModel.Ptemplate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/24 19:19
 * @description:
 */
public interface TemplateServiceI {

//    服务器保存用户上传
    String saveTemplate(HttpServletRequest request, String account, HttpSession session) throws IOException;

//    数据库保存用户上传文件信息和资源路径
    void saveTemplateInfo(Ptemplate ptemplate);

    //    服务器保存资源
    void saveFileResource(CommonsMultipartFile file[],String path);

//    获取一个template对象
    Ptemplate getTemplate(Ptemplate ptemplate);

//    根据imgId获取一个template对象
    Ptemplate getTemplateById(int imgId);

//    类型未选择根据搜索框信息获取一组template对象
    List<Ptemplate> listTemplate(String searchInfo);

//    类型已选择根据根据搜索框信息获取template对象
    List<Ptemplate> listTemplateByType(String searchInfo,String type);

//    获取用户的作品
    List<Ptemplate> listTemplateByUserId(int userId);

//    判断参数路径是否存在
    boolean isPathExist(String hql);
}
