package se.zust.service.impl;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import se.zust.dao.UserDaoI;
import se.zust.entity.User;
import se.zust.pageModel.Puser;
import se.zust.service.UserServiceI;

import java.util.HashMap;
import java.util.Map;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/27 14:46
 * @description:
 */
@Service
public class UserServiceImpl implements UserServiceI {

    @Autowired
    UserDaoI userDao;

    @Override
    public boolean existUser(String account,String password) {
        String hql = "FROM User user WHERE account = :account AND password = :password ";
        Map<String,Object> params = new HashMap<String, Object>();
        params.put("account",account);
        params.put("password",password);
        User user = userDao.get(hql,params);
        if (user != null){
            return true;
        }else
        return false;
    }

    /**
     * 获取用户信息
     * @param account
     * @return
     */
    @Override
    public Puser getUser(String account) {
        String hql = "from User u where u.account=:account";
        Map<String,Object> map = new HashMap<>(0);
        map.put("account",account);
//        依照user表创建一个user对象
        User user = new User();
        user = userDao.get(hql,map);
        Puser puser = new Puser();
//        user表拷贝到puser
        BeanUtils.copyProperties(user,puser);
        return puser;
    }

    @Override
    public Puser getUser(int userId) {
        String hql = "from User u where u.id = :userId";
        Map<String,Object> params = new HashMap<>();
        params.put("userId",userId);
        User user = userDao.get(hql,params);
        Puser puser = new Puser();
        if (user != null){
            BeanUtils.copyProperties(user,puser);
        }

        return puser;
    }

    @Override
    public void updateUser(Puser puser){
        User user=new User();
        BeanUtils.copyProperties(user,puser);
        userDao.update(user);
    }
}
