package com.zzu.xiha.servicre.impl;

import com.zzu.xiha.dao.UserDao;
import com.zzu.xiha.entity.User;
import com.zzu.xiha.servicre.UserService;
import com.zzu.xiha.util.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao dao;

    @Override
    public Integer registerByTel(User user) {
        //如果密码长度%2=0就用小写否则用大写
        String upperMD5 = MD5Util.getUpperMD5(user.getPassword());
        user.setPassword(upperMD5);
        Integer integer = dao.insertByTel(user);
        return integer;
    }

    @Override
    public User loginByTel(String tel, String password) {
        //如果密码长度%2=0就用小写否则用大写
        String upperMD5 = MD5Util.getUpperMD5(password);
        password = upperMD5;
        return dao.selectByTel(tel, password);
    }

    @Override
    public User selectById(String tel) {
        return dao.selectById(tel);
    }

    @Override
    public Boolean updateAccount(Integer id, Double account) {
        Integer integer = dao.updateAccount(id, account);
        return integer == 1 ? true : false;
    }

    @Override
    public Boolean update(User user) {
        Integer update = dao.update(user);
        return update == 1 ? true : false;
    }

    @Override
    public Boolean updatePassword(String tel, String password) {
        Integer integer = dao.updatePassword(tel, password);
        return integer == 1 ? true : false;
    }

}
