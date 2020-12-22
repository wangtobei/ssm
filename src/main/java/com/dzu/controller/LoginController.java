package com.dzu.controller;


import com.dzu.pojo.User;
import com.dzu.service.Userservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Autowired
    @Qualifier("UserServiceImp")
    private Userservice userservice;

    //首页登录系统
    @RequestMapping("/")
    public String Login() {
        return "login";
    }

    //退出系统，设置session无效
    @RequestMapping("/logout")
    public String Logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }

    //注册新用户
    @RequestMapping("/register")
    public String Register() {
        return "register";
    }

    //用户登录验证
    @RequestMapping("/login")
    public String LoginCheck(Model model, User user, HttpSession session) {
        System.out.println(user);
        String username = user.getUsername();
        User userDB = userservice.queryUserByName(username);
        if (userDB != null) {
            if (user.getPassword().equals(userDB.getPassword())) {
                System.out.println("登录成功！");
                session.setAttribute("user", userDB);
                userservice.addLoginTimes(userDB.getUserid());
                return "redirect:/dashboard";
            }
            model.addAttribute("tips", "账号密码错误，请重新输入！");
            return "login";
        }
        model.addAttribute("tips", "用户不存在！");
        return "login";

    }
}
