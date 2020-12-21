package com.dzu.controller;

import com.dzu.pojo.User;
import com.dzu.service.Userservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller

public class UserController {
    @Autowired
    @Qualifier("UserServiceImp")
    private Userservice userservice;

    @RequestMapping("/user/all")
    public String queryAllUser(Model model) {
        System.out.println("查询所有用户");
        List<User> users = userservice.queryUsers();
        System.out.println(users);
        model.addAttribute("users", users);
        return "users";
    }

    @RequestMapping("/user/delete/{id}")
    public String deleteUserById(@PathVariable int id) {
        System.out.println("删除用户");
        System.out.println(id);
        userservice.deleteUserById(id);
        return "";
    }

    @RequestMapping("/user/add")
    public String addUser(User user) {
        System.out.println("添加用户");
        System.out.println(user);
        userservice.addUser(user);
        return "redirect:/";
    }

    @RequestMapping("/dashboard/userinfo")
    public String PersonalInfo(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();  //获取cookie 获取session对象
        System.out.println(session.getId());
        User user = (User) session.getAttribute("user");
        String username = user.getUsername();
        User userDB = userservice.queryUserByName(username);
        model.addAttribute("user", userDB);
        return "personalInfo";
    }

    @RequestMapping("/dashboard/userinfo/update")
    public String updateUserInfo(Model model, User user, HttpServletRequest request) {
        HttpSession session = request.getSession();  //获取cookie 获取session对象
        System.out.println(session.getId());
        User userdb = (User) session.getAttribute("user");
        System.out.println(userdb);
        user.setUserid(userdb.getUserid());
        userservice.updateUser(user);
        model.addAttribute("tips", "信息完善成功！");
        return "tips";
    }
}