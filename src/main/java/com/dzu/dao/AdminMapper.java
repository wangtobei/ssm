package com.dzu.dao;

import com.dzu.pojo.Admin;

public interface AdminMapper {
    Admin queryAdminByName(String username);
}
