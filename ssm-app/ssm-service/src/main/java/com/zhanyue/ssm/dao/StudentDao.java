package com.zhanyue.ssm.dao;

import com.zhanyue.ssm.entity.Student;

import java.util.List;

public interface StudentDao {
    List<Student> queryList(Student student);
}