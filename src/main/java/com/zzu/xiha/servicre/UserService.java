package com.zzu.xiha.servicre;

import com.zzu.xiha.entity.User;

public interface UserService {
    Integer registerByTel(User user);

    User loginByTel(String tel, String password);

    User selectById(String tel);

    Boolean updateAccount(Integer id, Double account);

    Boolean update(User user);

    Boolean updatePassword(String tel, String password);
}
