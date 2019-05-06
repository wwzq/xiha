package com.zzu.xiha.controller;

import com.zzu.xiha.entity.User;
import com.zzu.xiha.servicre.UserService;
import com.zzu.xiha.util.AccountValidatorUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService service;

    @RequestMapping("beforeLogin")
    public String beforeLogin() {
        return "user/login";
    }

    @RequestMapping("login")
    @ResponseBody
    public Boolean login(String userName, String password) {
        boolean mobile = AccountValidatorUtil.isMobile(userName);
        boolean email = AccountValidatorUtil.isEmail(userName);
        User user = null;
        if (mobile) {
            user = service.loginByTel(userName, password);
        }
        if (email) {
            user = service.loginByEmail(userName, password);
        }
        if (user == null) {
            return false;
        } else {
            return true;
        }
    }

    @RequestMapping("registerByTel")
    public String registerByTel(User user) {
        Integer integer = service.registerByTel(user);
        return "";
    }

    @RequestMapping("registerByEmail")
    public String registerByEmail(User user) {
        Integer integer = service.registerByEmail(user);
        return "";
    }
}
