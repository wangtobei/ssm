package com.dzu.pojo;

//代表可以报考的科目
public class Subject {
    private int sid;
    private float price;
    private String subject;

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
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

    @Override
    public String toString() {
        return "Subject{" +
                "sid=" + sid +
                ", subject='" + subject + '\'' +
                '}';
    }
}
