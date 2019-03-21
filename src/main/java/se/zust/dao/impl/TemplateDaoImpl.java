package se.zust.dao.impl;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import se.zust.dao.TemplateDaoI;
import se.zust.entity.Template;



/**
 * @author: Pan Kai hang
 * @date: 2018/12/23 20:59
 * @description:
 */
@Repository
public class TemplateDaoImpl extends BaseDaoImpl<Template> implements TemplateDaoI {

    @Override
    public int getUserAllTemplate(String hql) {
        Query query = this.getCurrentSession().createQuery(hql);
        return query.list().size();
    }


}
