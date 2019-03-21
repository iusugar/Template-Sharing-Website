package se.zust.service;

import se.zust.entity.User;
import se.zust.pageModel.Puser;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/27 14:36
 * @description:
 */
public interface UserServiceI {

    boolean existUser(String account,String password);

    Puser getUser(String account);

    Puser getUser(int userId);

    void  updateUser(Puser puser);
}
