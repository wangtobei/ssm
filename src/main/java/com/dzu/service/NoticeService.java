package com.dzu.service;

import com.dzu.pojo.Notice;

import java.util.List;

public interface NoticeService {
    //添加公告
    int addNotice(Notice notice);

    int updateNotice(Notice notice);

    //删除公告
    int deleteNotice(int id);

    //显示所有公告
    List<Notice> queryNotices();
}
