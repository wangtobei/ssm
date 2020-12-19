package com.dzu.service;

import com.dzu.dao.SubjectMapper;
import com.dzu.pojo.Subject;

import java.util.List;

public class SubjectServiceImp implements SubjectService {
    private SubjectMapper subjectMapper;

    public void setSubjectMapper(SubjectMapper subjectMapper) {
        this.subjectMapper = subjectMapper;
    }

    public int addSubject(Subject subject) {
        return subjectMapper.addSubject(subject);
    }

    public int updateSubject(Subject subject) {
        return subjectMapper.updateSubject(subject);
    }

    public int deleteSubject(int id) {
        return subjectMapper.deleteSubject(id);
    }

    public List<Subject> querySubjects() {
        return subjectMapper.querySubjects();
    }

    public Subject querySubjectByName(String name) {
        return subjectMapper.querySubjectByName(name);
    }

    public Subject querySubjectById(int id) {
        return subjectMapper.querySubjectById(id);
    }
}
