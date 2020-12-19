package com.dzu.service;

import com.dzu.pojo.Admin;

public interface AdminService {
    Admin queryAdminByName(String username);
}
