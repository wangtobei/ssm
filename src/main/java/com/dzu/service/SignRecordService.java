package com.dzu.service;

import com.dzu.pojo.SignRecord;

import java.util.List;

public interface SignRecordService {
    int addSignRecord(SignRecord signRecord);

    int deleteSignRecord(int id);

    int updateSignRecord(SignRecord signRecord);

    List<SignRecord> querySignRecords();

    List<SignRecord> querySignRecordByUserID(int id);
    SignRecord querySignRecordById(int id);
    List<SignRecord> querySignRecordByUserName(String name);
}
