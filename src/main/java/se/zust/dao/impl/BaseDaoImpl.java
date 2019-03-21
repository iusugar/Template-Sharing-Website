package se.zust.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.annotations.OptimisticLocking;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import se.zust.dao.BaseDaoI;

import java.util.List;
import java.util.Map;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/23 19:41
 * @description:
 */
@Repository
public class BaseDaoImpl<T> implements BaseDaoI<T> {

    @Autowired
    private SessionFactory sessionFactory;

    public Session getCurrentSession(){
        return this.sessionFactory.getCurrentSession();
    }

    @Override
    public void save(T object) {
        if (object != null){
//            Transaction t = getCurrentSession().beginTransaction();
            this.getCurrentSession().save(object);
//            t.commit();
        }
    }

    @Override
    public void delete(T object) {
        if (object != null){
            this.getCurrentSession().delete(object);
        }
    }

    @Override
    public void update(T object) {
        if (object != null){
            this.getCurrentSession().update(object);
        }
    }

    @Override
    public void saveOrUpdate(T object) {
        if (object != null){
            this.getCurrentSession().saveOrUpdate(object);
        }
    }

    @Override
    public T get(String hql) {
        Query query = this.getCurrentSession().createQuery(hql);
        List<T> list = query.list();
        if (list != null && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public T get(String hql, Map<String, Object> params) {
        Query query = this.getCurrentSession().createQuery(hql);
        if (params != null && !params.isEmpty()) {
            for (String key : params.keySet()) {
                query.setParameter(key, params.get(key));
            }
        }
        List<T> list = query.list();
        if (list != null && list.size()>0)
            return list.get(0);
        return null;
    }

    @Override
    public List<T> list(String hql, Map<String, Object> params) {
        Query query = this.getCurrentSession().createQuery(hql);
        if (params != null && !params.isEmpty()) {
            for (String key : params.keySet()) {
                query.setParameter(key, params.get(key));
            }
        }
        List<T> list = query.list();
        if (list != null && list.size() > 0){
            return list;
        }
        return null;
    }

    @Override
    public List<T> list(String hql) {
        Query query = this.getCurrentSession().createQuery(hql);
        return query.list();
    }
}
