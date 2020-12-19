package com.dzu.controller;


import com.dzu.pojo.News;
import com.dzu.service.NewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class NewController {
    @Autowired
    @Qualifier("NewServiceImp")
    private NewService newService;

    @RequestMapping("/dashboard/news")
    public String queryAllNews(Model model) {
        List<News> list = newService.queryAllNews();
        System.out.println(list);
        model.addAttribute("list", list);
        return "news";
    }
}

