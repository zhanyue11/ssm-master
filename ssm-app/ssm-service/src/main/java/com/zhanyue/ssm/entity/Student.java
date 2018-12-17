package com.zhanyue.ssm.entity;

import java.io.Serializable;

public class Student  implements Serializable {
    
    private Integer id;
    
    private String studentName;
    
    private String studentClass;
    
    public Integer getStudentAge() {
        return studentAge;
    }
    
    public void setStudentAge(Integer studentAge) {
        this.studentAge = studentAge;
    }
    
    private Integer studentAge;
    
    public String getStudentName() {
        return studentName;
    }
    
    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }
    
    public String getStudentClass() {
        return studentClass;
    }
    
    public void setStudentClass(String studentClass) {
        this.studentClass = studentClass;
    }
    
    public Integer getId() {
        return id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
}
