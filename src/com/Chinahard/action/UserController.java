package com.Chinahard.action;


import com.Chinahard.Dao.IUserLogin;
import com.Chinahard.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Arrays;
import java.util.List;

@Controller
public class UserController {
	
	@Autowired
	private IUserLogin IUserDaoLogin;
	

	@RequestMapping("/Login")
	public String doLogin(EmployeeLogin employeeLogin, User user, Model model){
		    IUserDaoLogin.addUserLogin(employeeLogin);
		    return "Login";
		   
	}

	
	
	@RequestMapping("/employee")
	public String employee(EmployeeLogin employeeLogin, User user, announcement announcement, Model model){
		    EmployeeLogin doLogin = IUserDaoLogin.doLogin(employeeLogin);
		    User queryuserName = IUserDaoLogin.queryuserName(user.getUid());
		    
		    List<User> userList = IUserDaoLogin.querUserID(user.getUid());
			model.addAttribute("userList",userList);
			String uid = employeeLogin.getUid();
			String password = employeeLogin.getPASSWORD();
			EmployeeLogin queryiD = IUserDaoLogin.queryiD(employeeLogin);
			System.out.println(queryiD.getUid());
			 if(!uid.equals(queryiD.getUid())||!password.equals(queryiD.getPASSWORD()))
			    {
				    return "NewFile";
			    }else if(uid.equals("1")&&password.equals(queryiD.getPASSWORD()))
			    {
			    	return "index";
			    }
			    else {
			    	if(queryuserName==null)
			    	{
			    		return "personInfo";
			    	}
			    	List<announcement> queryannouncement = IUserDaoLogin.queryannouncement(announcement);
				     model.addAttribute("queryannouncement",queryannouncement);
			    	

				     List<User> querUserID = IUserDaoLogin.querUserID(user.getUid());
				     System.out.println(querUserID+"---------------");
						model.addAttribute("querUserID",querUserID);
				    return "Employee";
				}
	}
	

	
	@RequestMapping("/user_list")
	public String user_list(EmployeeLogin employeeLogin,User user,int start,String userName,Model model){
		 int count=5;
		System.out.println(start+"========"+userName);
		if(userName!=null)
		{
			List<User> queryUserById = IUserDaoLogin.queryUserById(userName);
			model.addAttribute("userList",queryUserById);
			Page page=new Page(start, count);
			page.setTotal(50);
			model.addAttribute("page",page);
			 return "user_list";
		}
	    
	    List<User> userList = IUserDaoLogin.querycount(start, count);
		model.addAttribute("userList",userList);
	    Page page=new Page(start, count);
		page.setTotal(50);
		model.addAttribute("page",page);

		    return "user_list";
		    
	}
	
	
	

	@RequestMapping("/user_one")
	public String user_one(EmployeeLogin employeeLogin,User user,Model model){	
//		 List<EmployeeLogin> userL=IUserDaoLogin.queryUser(employeeLogin);
//		 model.addAttribute("userList",userL);
		System.out.println(user.getUserName());
        
		List<User> queryUserById = IUserDaoLogin.queryUserById(user.getUserName());
		model.addAttribute("userList",queryUserById);
		    return user_list(employeeLogin, user, 0,user.getUserName(),  model);
	}
	@RequestMapping("/UserInfo")
	public String UserInfo(EmployeeLogin employeeLogin,Model model){
		IUserDaoLogin.addUserLogin(employeeLogin);
	    return "Login";	  
	}
	@RequestMapping("/employeeInfo")
	public String employeeInfo(Employee employee, User user, announcement announcement, Model model){
		IUserDaoLogin.addUserInfo(employee);
		List<announcement> queryannouncement = IUserDaoLogin.queryannouncement(announcement);
	     model.addAttribute("queryannouncement",queryannouncement);

	    List<Employee> querEmployee = IUserDaoLogin.querEmployee(user.getCid());
		model.addAttribute("querUserID",querEmployee);
	    return "Employee";
	    
	}
	@RequestMapping("/deleteUser")
	public String deleteUser(EmployeeLogin employeeLogin,User user,Integer[] ids,Model model)
	{
		 System.out.println("ids: "+ Arrays.toString(ids));
		IUserDaoLogin.deleteUser(employeeLogin.getCid());
	        for (Integer id : ids) {
	            IUserDaoLogin.deleteUser(id);
	        }
		return user_list(null,null,0,null,model);
	}
	@RequestMapping("/updata_personInfo")
	public String updata_personInfo(Employee employee,User user,Model model)
	{
	
		List<Employee> querEmployee = IUserDaoLogin.querEmployee(employee.getCid());
	
		System.out.println(querEmployee);
		model.addAttribute("User",querEmployee);
		return "updata_personInfo";
	}
	@RequestMapping("/updata")
	public String updata(Employee employee,User user,Model model)
	{
		System.out.println(employee+"-------");
		IUserDaoLogin.updateUser(employee);
		
		return user_list(null, null, 0, null, model);
	}
			@RequestMapping("/announcement")
			public String announcement(announcement announcement,Model model)
			{
	       List<announcement> queryannouncement = IUserDaoLogin.queryannouncement(announcement);
	       System.out.println(queryannouncement+"----------");
	       model.addAttribute("queryannouncement",queryannouncement);
					 return "info";
			}	

			@RequestMapping("/saveann")
			public String saveann(announcement announcement,Model model)
			{
				IUserDaoLogin.saveann(announcement);
	     
					 return "notice";
			}
	@RequestMapping("/personInfo")
	public String personInfo(EmployeeLogin employeeLogin,User user,Model model)
	{
			System.out.println(employeeLogin);
		List<User> querUserID = IUserDaoLogin.querUserID(user.getUid());
			model.addAttribute("querUserID",querUserID);
			 return "NewFile";
	}
		
		

}
