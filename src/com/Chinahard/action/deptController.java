package com.Chinahard.action;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Chinahard.Dao.IUserLogin;
import com.Chinahard.pojo.EmployeeLogin;
import com.Chinahard.pojo.User;
import com.Chinahard.pojo.dept;

@Controller
public class deptController {
	@Resource
	private IUserLogin IUserDaoLogin;
	

		@RequestMapping("/deptLogin")
	public String doLogin(dept dept,Model model){	
		    IUserDaoLogin.CreateDept(dept);
		    return "create_dept";
		   
	}
}
