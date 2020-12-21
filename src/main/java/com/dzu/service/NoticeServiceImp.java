package com.dzu.service;

import com.dzu.dao.NoticeMapper;
import com.dzu.pojo.Notice;

import java.util.List;

public class NoticeServiceImp implements NoticeService {
    private NoticeMapper noticeMapper;

    public void setNoticeMapper(NoticeMapper noticeMapper) {
        this.noticeMapper = noticeMapper;
    }

    public int addNotice(Notice notice) {
        return noticeMapper.addNotice(notice);
    }

    public int updateNotice(Notice notice) {
        return noticeMapper.updateNotice(notice);
    }

    public int deleteNotice(int id) {
        return noticeMapper.deleteNotice(id);
    }

    public List<Notice> queryNotices() {
        return noticeMapper.queryNotices();
    }

    @Override
    public List<Notice> queryNoticesByTitle(String title) {
        return noticeMapper.queryNoticesByTitle(title);
    }
}
