package com.zhanyue.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ssm/student")
public class StudentController {
    @RequestMapping(value="/index")
	public String init( ){
		return "/ssm/index";
	}
	
	
}