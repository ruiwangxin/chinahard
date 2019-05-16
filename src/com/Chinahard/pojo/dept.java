package com.Chinahard.pojo;

public class dept {
	private int id;
	private String deptName;
	private String position;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	@Override
	public String toString() {
		return "dept [id=" + id + ", deptName=" + deptName + ", position=" + position + "]";
	}
	

}
