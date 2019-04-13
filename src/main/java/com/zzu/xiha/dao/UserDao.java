package com.zzu.xiha.dao;

import com.zzu.xiha.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    Integer insertByTel(User user);

    Integer insertByEmail(User user);

    User selectByTel(@Param("tel") String tel, @Param("password") String password);

    User selectByEmail(@Param("email") String email, @Param("password") String password);
}
