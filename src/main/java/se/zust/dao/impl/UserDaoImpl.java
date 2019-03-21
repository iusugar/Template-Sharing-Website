package se.zust.dao.impl;

import org.springframework.stereotype.Repository;
import se.zust.dao.UserDaoI;
import se.zust.entity.User;

/**
 * @author: Pan Kai hang
 * @date: 2018/12/23 20:56
 * @description:
 */
@Repository
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDaoI {
}
