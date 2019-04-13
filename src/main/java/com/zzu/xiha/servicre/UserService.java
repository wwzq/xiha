package com.zzu.xiha.servicre;

import com.zzu.xiha.entity.User;

public interface UserService {
    Integer registerByTel(User user);

    Integer registerByEmail(User user);

    User loginByTel(String tel, String password);

    User loginByEmail(String email, String password);
}
