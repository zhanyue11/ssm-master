package com.zhanyue.ssm.service.imp;

import com.zhanyue.ssm.dao.StudentDao;
import com.zhanyue.ssm.entity.Student;
import com.zhanyue.ssm.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("studentService")
public class StudentServiceImpl implements StudentService {

    @Resource
    public StudentDao studentDao;

    @Override
    public List<Student> queryList(Student student) {
        return studentDao.queryList(student);
    }
}