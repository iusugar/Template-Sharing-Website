package se.zust.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/23 19:29
 * @description:
 */

public interface BaseDaoI<T> {

//    保存对象
    void save(T object);

//    删除对象
    void delete(T object);

//    更改对象
    void update(T object);

//    保存或更新一个对象
    void saveOrUpdate(T object);

//    通过hql获得单个对象
    T get(String hql);

//    通过hql和参数获得单个对象
    T get(String hql, Map<String,Object> params);

    //    通过hql和参数获得单个对象
    List<T> list(String hql, Map<String,Object> params);

//    通过hql获取list对象
    List<T> list(String hql);
}
