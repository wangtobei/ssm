package com.dzu.dao;

import com.dzu.pojo.Notice;

import java.util.List;

public interface NoticeMapper {
    //添加公告
    int addNotice(Notice notice);

    //更新公告
    int updateNotice(Notice notice);

    //删除公告
    int deleteNotice(int id);

    //显示所有公告
    List<Notice> queryNotices();
}
