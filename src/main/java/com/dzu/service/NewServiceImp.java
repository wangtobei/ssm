package com.dzu.service;

import com.dzu.dao.NewsMapper;
import com.dzu.pojo.News;

import java.util.List;

public class NewServiceImp implements NewService {
    private NewsMapper newsMapper;

    public void setNewsMapper(NewsMapper newsMapper) {
        this.newsMapper = newsMapper;
    }

    public int addNews(News news) {
        return newsMapper.addNews(news);
    }

    public int deleteNews(int id) {
        return newsMapper.deleteNews(id);
    }

    public int updateNews(News news) {
        return newsMapper.updateNews(news);
    }

    public News queryNews(int id) {
        return newsMapper.queryNews(id);
    }

    public List<News> queryAllNews() {
        return newsMapper.queryAllNews();
    }
}
