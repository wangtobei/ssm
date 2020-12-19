package com.dzu.service;

import com.dzu.dao.AdminMapper;
import com.dzu.pojo.Admin;

public class AdminServiceImp implements AdminService {
    private AdminMapper adminMapper;

    public void setAdminMapper(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }

    public Admin queryAdminByName(String username) {
        return adminMapper.queryAdminByName(username);
    }
}
