package com.dzu.controller;

import com.dzu.pojo.Notice;
import com.dzu.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class NoticeController {
    @Autowired
    @Qualifier("NoticeServiceImp")
    private NoticeService noticeService;

    @RequestMapping("/dashboard")
    public String ShowNotices(Model model) {
        List<Notice> notices = noticeService.queryNotices();
        model.addAttribute("notices", notices);
        return "dashboard";
    }
}
