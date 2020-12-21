package com.dzu.service;

import com.dzu.pojo.News;

import java.util.List;

public interface NewService {
    int addNews(News news);

    int deleteNews(int id);

    int updateNews(News news);

    List<News> queryNews(String title);

    List<News> queryAllNews();
}
