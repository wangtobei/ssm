package com.dzu.controller;

import com.dzu.pojo.*;
import com.dzu.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    //使用注解依赖注入
    @Autowired
    @Qualifier("AdminServiceImp")
    private AdminService adminService;

    @Autowired
    @Qualifier("NoticeServiceImp")
    private NoticeService noticeService;
    @Autowired
    @Qualifier("NewServiceImp")
    private NewService newService;
    @Autowired
    @Qualifier("SubjectServiceImp")
    private SubjectService subjectService;
    @Autowired
    @Qualifier("SignRecordServiceImp")
    private SignRecordService signRecordService;
    @Autowired
    @Qualifier("UserServiceImp")
    private Userservice userservice;

    //显示管理员登录页面
    @RequestMapping("")
    public String AdminLogin() {
        return "admin/login";
    }

    //显示管理员管理界面
    @RequestMapping("/dashboard")
    public String Dashboard() {
        return "admin/dashboard";
    }

    //进行验证
    @RequestMapping("/verify")
    public String Verify(Model model, Admin admin, HttpSession session) {
        Admin adminDB = adminService.queryAdminByName(admin.getUsername());
        if (adminDB != null) {
            if (adminDB.getPassword().equals(admin.getPassword())) {
                session.setAttribute("admin", adminDB);
                return "redirect:/admin/dashboard";
            } else {
                System.out.println("账号或密码输入错误！");
                model.addAttribute("tips", "账号或密码输入错误！");
                return "admin/login";
            }
        }
        System.out.println("账号不存在！");
        model.addAttribute("tips", "账号不存在！");
        return "admin/login";
    }

    //公告管理相关
    @RequestMapping("/notices")
    @ResponseBody
    public List<Notice> queryAllNotices() {
        return noticeService.queryNotices();
    }

    //删除公告
    @RequestMapping("/notices/delete/{id}")
    @ResponseBody
    public boolean deleteNotices(@PathVariable int id) {
        noticeService.deleteNotice(id);
        return true;
    }

    //更新公告
    @RequestMapping("/notices/update")
    @ResponseBody
    public boolean updateNotices(Notice notice) {
        noticeService.updateNotice(notice);
        return true;
    }

    //返回添加页面
    @RequestMapping("/notices/add")
    public String addNotice() {
        return "admin/addNotices";
    }

    //将新的公告添加到数据库
    @RequestMapping("/notices/adddb")
    public String addNoticeToDB(Notice notice) {
        noticeService.addNotice(notice);
        return "redirect:/admin/dashboard";
    }

    //新闻管理相关
    @RequestMapping("/dashboard/news")
    public String NewsPage() {
        return "admin/news";
    }

    //获取所有的新闻
    @RequestMapping("/dashboard/news/all")
    @ResponseBody
    public List<News> queryAllNews() {
        return newService.queryAllNews();
    }

    //根据id删除新闻
    @ResponseBody
    @RequestMapping("/dashboard/news/delete/{id}")
    public boolean deleteNew(@PathVariable int id) {
        newService.deleteNews(id);
        return true;
    }

    //更新新闻
    @RequestMapping("/dashboard/news/update")
    @ResponseBody
    public boolean updateNew(News news) {
        newService.updateNews(news);
        return true;
    }

    //添加页面
    @RequestMapping("/dashboard/news/add")
    public String addNwsPage() {
        return "admin/addnews";
    }

    //将数据添加到数据库
    @RequestMapping("/dashboard/news/addtodb")
    public String addNewsTODB(News news) {
        newService.addNews(news);
        return "redirect:/admin/dashboard/news";
    }

    //根据标题查询
    @RequestMapping("/dashboard/news/query/{title}")
    @ResponseBody
    public List<News> queryNewByTitle(@PathVariable String title) {
        return newService.queryNews(title);
    }

    //科目页面
    @RequestMapping("/dashboard/subjects")
    public String subjectsPage() {
        return "admin/subjects";
    }

    //返回添加页面
    @RequestMapping("/dashboard/subjects/add")
    public String addSubjectsPage() {
        return "admin/addsubjects";
    }

    //获取所有科目
    @RequestMapping("/dashboard/subjects/all")
    @ResponseBody
    public List<Subject> queryAllSubject() {
        return subjectService.querySubjects();
    }

    //更新科目
    @RequestMapping("/dashboard/subjects/update")
    @ResponseBody
    public boolean updateSubjects(Subject subject) {
        subjectService.updateSubject(subject);
        return true;
    }

    //将科目添加到数据库
    @RequestMapping("/dashboard/subjects/addtodb")
    public String addSubjectsTODB(Subject subject) {
        subjectService.addSubject(subject);
        return "redirect:/admin/dashboard/subjects";
    }

    //删除科目
    @RequestMapping("/dashboard/subjects/delete/{id}")
    public boolean deleteSubjects(@PathVariable int id) {
        subjectService.deleteSubject(id);
        return true;
    }

    //查看报名表
    @RequestMapping("/dashboard/signrecord")
    public String signRecordPage() {
        return "admin/signRecord";
    }

    //从数据库提取报名表
    @RequestMapping("/dashboard/signrecord/all")
    @ResponseBody
    public List<SignRecord> QuerySignRecord() {
        return signRecordService.querySignRecords();
    }

    //删除报名信息
    @RequestMapping("/dashboard/signrecord/delete/{id}")
    @ResponseBody
    public boolean deleteSignRecord(@PathVariable int id) {
        signRecordService.deleteSignRecord(id);
        return true;
    }

    //更新
    @RequestMapping("/dashboard/signrecord/update")
    @ResponseBody
    public boolean updateSignRecord(SignRecord signRecord) {
        signRecordService.updateSignRecord(signRecord);
        return true;
    }

    //用户管理
    @RequestMapping("/dashboard/user")
    public String UserPage() {
        return "admin/user";
    }

    @RequestMapping("/dashboard/user/all")
    @ResponseBody
    public List<User> QueryAllUser() {
        return userservice.queryUsers();
    }

    @RequestMapping("/dashboard/user/update")
    @ResponseBody
    public boolean updateUser(User user) {
        userservice.updateUser(user);
        return true;
    }

    @RequestMapping("/dashboard/user/delete/{id}")
    @ResponseBody
    public boolean deleteUser(@PathVariable int id) {
        userservice.deleteUserById(id);
        return true;
    }

    @RequestMapping("/dashboard/logout")
    public String Logout(HttpSession session) {
        session.invalidate();
        return "redirect:/admin/";
    }
}
