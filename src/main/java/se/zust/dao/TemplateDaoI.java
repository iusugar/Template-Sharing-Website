package se.zust.dao;

import org.springframework.web.multipart.commons.CommonsMultipartFile;
import se.zust.entity.Template;

import java.io.File;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/23 20:58
 * @description:
 */
public interface TemplateDaoI extends BaseDaoI<Template> {

//    查找用户所有上传资源的数目
    int getUserAllTemplate(String hql);


}
