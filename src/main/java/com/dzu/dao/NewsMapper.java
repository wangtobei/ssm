package com.dzu.dao;

import com.dzu.pojo.News;

import java.util.List;

public interface NewsMapper {
    int addNews(News news);

    int deleteNews(int id);

    int updateNews(News news);

    News queryNews(int id);

    List<News> queryAllNews();
}
