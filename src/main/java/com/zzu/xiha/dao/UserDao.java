package com.zzu.xiha.dao;

import com.zzu.xiha.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    Integer insertByTel(User user);

    User selectByTel(@Param("tel") String tel, @Param("password") String password);

    User selectById(String tel);

    Integer updateAccount(@Param("id") Integer id, @Param("account") Double account);

    Integer update(User user);

    Integer updatePassword(@Param("tel") String tel, @Param("password") String password);
}
