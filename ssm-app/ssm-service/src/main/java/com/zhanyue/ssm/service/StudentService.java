package com.zhanyue.ssm.service;

import com.zhanyue.ssm.entity.Student;

import java.util.List;

public interface StudentService {

	List<Student> queryList(Student student);
}
