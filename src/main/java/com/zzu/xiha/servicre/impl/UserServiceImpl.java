package com.zzu.xiha.servicre.impl;

import com.zzu.xiha.dao.UserDao;
import com.zzu.xiha.entity.User;
import com.zzu.xiha.servicre.UserService;
import com.zzu.xiha.util.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao dao;

    @Override
    public Integer registerByTel(User user) {
        //如果密码长度%2=0就用小写否则用大写
        if (user.getPassword().length() % 2 == 0) {
            final String lowerMD5 = MD5Util.getLowerMD5(user.getPassword());
            user.setPassword(lowerMD5);
        } else {
            final String upperMD5 = MD5Util.getUpperMD5(user.getPassword());
            user.setPassword(upperMD5);
        }
        final Integer integer = dao.insertByTel(user);
        return integer;
    }

    @Override
    public Integer registerByEmail(User user) {
        //如果密码长度%2=0就用小写否则用大写
        if (user.getPassword().length() % 2 == 0) {
            final String lowerMD5 = MD5Util.getLowerMD5(user.getPassword());
            user.setPassword(lowerMD5);
        } else {
            final String upperMD5 = MD5Util.getUpperMD5(user.getPassword());
            user.setPassword(upperMD5);
        }
        final Integer integer = dao.insertByEmail(user);
        return integer;
    }

    @Override
    public User loginByTel(String tel, String password) {
        //如果密码长度%2=0就用小写否则用大写
        if (password.length() % 2 == 0) {
            final String lowerMD5 = MD5Util.getLowerMD5(password);
            password = lowerMD5;
        } else {
            final String upperMD5 = MD5Util.getUpperMD5(password);
            password = upperMD5;
        }
        return dao.selectByTel(tel, password);
    }

    @Override
    public User loginByEmail(String email, String password) {
        //如果密码长度%2=0就用小写否则用大写
        if (password.length() % 2 == 0) {
            final String lowerMD5 = MD5Util.getLowerMD5(password);
            password = lowerMD5;
        } else {
            final String upperMD5 = MD5Util.getUpperMD5(password);
            password = upperMD5;
        }
        return dao.selectByEmail(email, password);
    }
}
