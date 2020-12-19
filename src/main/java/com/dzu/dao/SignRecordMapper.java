package com.dzu.dao;

import com.dzu.pojo.SignRecord;

import java.util.List;

public interface SignRecordMapper {
    int addSignRecord(SignRecord signRecord);

    int deleteSignRecord(int id);

    int updateSignRecord(SignRecord signRecord);

    List<SignRecord> querySignRecords();

    List<SignRecord> querySignRecordByUserID(int id);

    SignRecord querySignRecordById(int id);
}
