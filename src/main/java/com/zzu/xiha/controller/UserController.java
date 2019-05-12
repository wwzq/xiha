package com.zzu.xiha.controller;

import com.aliyuncs.exceptions.ClientException;
import com.zzu.xiha.entity.User;
import com.zzu.xiha.servicre.UserService;
import com.zzu.xiha.util.AccountValidatorUtil;
import com.zzu.xiha.util.SendCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Random;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService service;

    @RequestMapping("login")
    @ResponseBody
    public Boolean login(String userName, String password) {
        boolean mobile = AccountValidatorUtil.isMobile(userName);
        if (mobile) {
            User user = service.loginByTel(userName, password);
            if (user == null) {
                return false;
            } else {
                return true;
            }
        } else {
            return false;
        }
    }

    @RequestMapping("getcode")
    @ResponseBody
    public Boolean getCode(String phone, HttpSession session) {
        String code = "";
        for (int i = 0; i < 4; i++) {
            int j = new Random().nextInt(10);
            code += j;
        }
        session.setAttribute("code", code);
        try {
            Boolean send = SendCode.send(phone, code);
            return send;
        } catch (ClientException e) {
            e.printStackTrace();
            return false;
        }
    }
    @RequestMapping("registerByTel")
    public String registerByTel(User user, String code) {
        Integer integer = service.registerByTel(user);
        return "";
    }

}
