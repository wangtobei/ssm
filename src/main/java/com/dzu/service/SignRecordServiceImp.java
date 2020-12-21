package com.dzu.service;

import com.dzu.dao.SignRecordMapper;
import com.dzu.pojo.SignRecord;

import java.util.List;

public class SignRecordServiceImp implements SignRecordService {
    private SignRecordMapper signRecordMapper;

    public void setSignRecordMapper(SignRecordMapper signRecordMapper) {
        this.signRecordMapper = signRecordMapper;
    }

    public int addSignRecord(SignRecord signRecord) {
        return signRecordMapper.addSignRecord(signRecord);
    }

    public int deleteSignRecord(int id) {
        return signRecordMapper.deleteSignRecord(id);
    }

    public int updateSignRecord(SignRecord signRecord) {
        return signRecordMapper.updateSignRecord(signRecord);
    }

    public List<SignRecord> querySignRecords() {
        return signRecordMapper.querySignRecords();
    }

    public List<SignRecord> querySignRecordByUserID(int id) {
        return signRecordMapper.querySignRecordByUserID(id);
    }

    public SignRecord querySignRecordById(int id) {
        return signRecordMapper.querySignRecordById(id);
    }

    public List<SignRecord> querySignRecordByUserName(String name) {
        return signRecordMapper.querySignRecordByUserName(name);
    }


}
