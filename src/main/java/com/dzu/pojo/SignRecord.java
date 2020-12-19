package com.dzu.pojo;

//报名表
public class SignRecord {
    private int rid;//报名表id
    private int sid;//科目id
    private String subject;//科目名称
    private int uid;//用户id
    private String username;//用户姓名
    private String phone;//电话号

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "SignRecord{" +
                "rid=" + rid +
                ", sid=" + sid +
                ", subject='" + subject + '\'' +
                ", uid=" + uid +
                ", username='" + username + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}
