package com.Chinahard.pojo;

public class EmployeeLogin {
	private int cid;
	private String uid;
	private String PASSWORD;
	
	
	

	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	@Override
	public String toString() {
		return "EmployeeLogin [cid=" + cid + ", uid=" + uid + ", PASSWORD=" + PASSWORD + "]";
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	
	

}
