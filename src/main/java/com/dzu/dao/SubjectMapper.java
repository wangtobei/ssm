package com.dzu.dao;

import com.dzu.pojo.Subject;

import java.util.List;

public interface SubjectMapper {
    //添加科目
    int addSubject(Subject subject);

    //修改科目
    int updateSubject(Subject subject);

    //删除科目
    int deleteSubject(int id);

    //查询所有科目
    List<Subject> querySubjects();

    //根据名称查询科目
    Subject querySubjectByName(String name);
    //根据id查询
    Subject querySubjectById(int id);
}
