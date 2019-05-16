package com.Chinahard.Dao;

import java.util.ArrayList;
import java.util.List;

import com.Chinahard.pojo.Employee;
import com.Chinahard.pojo.EmployeeLogin;
import com.Chinahard.pojo.User;
import com.Chinahard.pojo.admin;
import com.Chinahard.pojo.announcement;
import com.Chinahard.pojo.dept;




public interface IUserLogin {

	public int addUserLogin(EmployeeLogin employeeLogin);

	public EmployeeLogin doLogin(EmployeeLogin employeeLogin);

	public int updateUser(Employee employee);

	public List<EmployeeLogin> queryUser(EmployeeLogin employeeLogin);
	public List<User> queryUser2(User user);
	public List<User> queryUserById(String userName);
	public EmployeeLogin queryiD(EmployeeLogin employeeLogin);
	public List<User> querUserID(int uid);
	public User queryuserName(int uid);

	public List<Employee> querEmployee(int cid);

	public admin queryadmin(Double adminuid);

	public List<User> querycount(int start,int count);


	public int addUserInfo(Employee employee);

	public int deleteUser(int cid);

	public List<announcement> queryannouncement(announcement announcement);
	public int saveann(announcement announcement);

	public int CreateDept(dept dept);

	public int Createadmin(admin admin);

}
