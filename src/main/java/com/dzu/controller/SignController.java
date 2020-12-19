package com.dzu.controller;

import com.dzu.pojo.SignRecord;
import com.dzu.pojo.Subject;
import com.dzu.pojo.User;
import com.dzu.service.SignRecordService;
import com.dzu.service.SubjectService;
import com.dzu.service.SubjectServiceImp;
import com.dzu.service.Userservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class SignController {
    @Autowired
    @Qualifier("SubjectServiceImp")
    private SubjectService subjectService;
    @Autowired
    @Qualifier("SignRecordServiceImp")
    private SignRecordService signRecordService;
    @Autowired
    @Qualifier("UserServiceImp")
    private Userservice userservice;

    @RequestMapping("/dashboard/signup")
    public String SignUp(Model model) {
        List<Subject> subjects = subjectService.querySubjects();
        model.addAttribute("subjects", subjects);
        return "signup";
    }

    //进行报名
    @RequestMapping("/dashboard/signup/{id}")
    public String SignUp(Model model, @PathVariable int id, HttpServletRequest request) {
        HttpSession session = request.getSession();           //获取当前用户信息
        User user = (User) session.getAttribute("user");
        if (user != null) {
            String username = user.getUsername();   //获取当前用户的信息
            User userDB = userservice.queryUserByName(username); //从数据库中把当前用户的信息查出来
            Subject subject = subjectService.querySubjectById(id);  //根据id查询要报考科目的信息
            List<SignRecord> list = signRecordService.querySignRecordByUserID(userDB.getUserid()); //查找当前用户已经报考的科目
            for (SignRecord record : list
            ) {
                if (record.getSid() == id) {
                    model.addAttribute("tips", "已经报名的科目不可以重复报名！");
                    return "tips";
                }
            }
            model.addAttribute("subject", subject);
            model.addAttribute("user", userDB);
            return "submit";
        } else {
            System.out.println("还没有登录哦");
            return "redirect:/";
        }

    }

    @RequestMapping("/dashboard/signup/submit")
    public String addSignRecord(SignRecord signRecord) {
        signRecordService.addSignRecord(signRecord);
        return "submitsuccess";
    }

    @RequestMapping("/dashboard/signed")
    public String Signed(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user != null) {
            String username = user.getUsername();
            User userDB = userservice.queryUserByName(username);
            List<SignRecord> signRecord = signRecordService.querySignRecordByUserID(userDB.getUserid());
            model.addAttribute("signRecord", signRecord);
            return "signed";
        } else {
            System.out.println("还没有登录哦");
            return "redirect:/";
        }

    }

    @RequestMapping("/dashboard/signrecord/delete/{id}")
    public String DeleteSignRecord(@PathVariable int id) {
        signRecordService.deleteSignRecord(id);
        return "redirect:/dashboard/signed";
    }

    @RequestMapping("/dashboard/signrecord/print/{id}")
    public String Print(Model model, @PathVariable int id, HttpServletRequest request) {
        boolean flag = false;
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        System.out.println(user);
        List<SignRecord> list = signRecordService.querySignRecordByUserID(user.getUserid());
        System.out.println(list);
//判断当前用户是否报考的传入的id的测试
        for (SignRecord item : list
        ) {
            if (item.getRid() == id) {
                flag = true;
            }
        }
        if (!flag) {
            model.addAttribute("tips", "信息错误哦！");
            return "tips";
        }
        SignRecord signRecord = signRecordService.querySignRecordById(id);
        model.addAttribute("signrecord", signRecord);
        return "print";

    }
}
