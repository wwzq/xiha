package com.zzu.xiha;

import com.zzu.xiha.dao.UserDao;
import com.zzu.xiha.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class XihaApplicationTests {
    @Autowired
    private UserDao userDao;
    @Test
    public void contextLoads() {
        final User user = userDao.selectByTel("18860355856", "E10ADC3949BA59ABBE56E057F20F883E");
        System.out.println(user);
    }

}
