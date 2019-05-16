package com.Chinahard.pojo;

public class Employee {
	int id;
	private String userName;     //员工姓名
	private int age;         //员工年龄
	private int cid;          //员工编号
	private String sex;      //员工性别
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", userName=" + userName + ", age=" + age + ", cid=" + cid + ", sex=" + sex + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
}
