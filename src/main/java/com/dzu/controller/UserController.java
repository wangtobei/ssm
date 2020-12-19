package com.dzu.controller;

import com.dzu.pojo.User;
import com.dzu.service.Userservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    @Qualifier("UserServiceImp")
    private Userservice userservice;

    @RequestMapping("/all")
    public String queryAllUser(Model model) {
        System.out.println("查询所有用户");
        List<User> users = userservice.queryUsers();
        System.out.println(users);
        model.addAttribute("users", users);
        return "users";
    }

    @RequestMapping("/delete/{id}")
    public String deleteUserById(@PathVariable int id) {
        System.out.println("删除用户");
        System.out.println(id);
        userservice.deleteUserById(id);
        return "";
    }

    @RequestMapping("/add")
    public String addUser(User user) {
        System.out.println("添加用户");
        System.out.println(user);
        userservice.addUser(user);
        return "redirect:/";
    }
}
