package com.dzu.service;

import com.dzu.pojo.User;


import java.util.List;

public interface Userservice {
    //增加一个用户
    int addUser(User user);

    //删除一个用户
    int deleteUserById(int id);

    //更新一个用户
    int updateUser(User user);

    //查询一个用户
    User queryUserById(int id);

    //查询全部用户
    List<User> queryUsers();

    //根据用户名查询用户
    User queryUserByName(String username);
}
