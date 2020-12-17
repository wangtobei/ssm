package com.dzu.dao;

import com.dzu.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    //增加一个用户
    int addUser(User user);
    //删除一个用户
    int deleteUserById(@Param("uid") int id);
    //更新一个用户
    int updateUser(User user);
    //查询一个用户
    User queryUserById(@Param("uid") int id);
    //查询全部用户
    List<User> queryUsers();
}
