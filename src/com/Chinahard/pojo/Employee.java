package com.Chinahard.pojo;

public class Employee {
	int id;
	private String userName;     //Ա������
	private int age;         //Ա������
	private int cid;          //Ա�����
	private String sex;      //Ա���Ա�
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
