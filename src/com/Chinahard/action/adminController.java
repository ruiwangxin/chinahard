package com.Chinahard.action;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Chinahard.Dao.IUserLogin;
import com.Chinahard.pojo.admin;


@Controller
public class adminController {
	@Autowired
	private IUserLogin IUserDaoLogin;
	@RequestMapping("/admin")
	public String admin(admin admin,Model model){	
		    IUserDaoLogin.Createadmin(admin);
		    return "create_admin";
		   
	}
}
