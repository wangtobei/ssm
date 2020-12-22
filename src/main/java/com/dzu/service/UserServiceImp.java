package com.dzu.service;

import com.dzu.dao.UserMapper;
import com.dzu.pojo.User;

import java.util.List;

public class UserServiceImp implements Userservice {
    //service调dao层
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    public int deleteUserById(int id) {
        return userMapper.deleteUserById(id);
    }

    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    public User queryUserById(int id) {
        return userMapper.queryUserById(id);
    }

    public List<User> queryUsers() {
        return userMapper.queryUsers();
    }

    public User queryUserByName(String username) {
        return userMapper.queryUserByName(username);
    }

    public List<User> queryUsersByName(String username) {
        return userMapper.queryUsersByName(username);
    }

    public int addLoginTimes(int id) {
        return userMapper.addLoginTimes(id);
    }
}
