package com.Chinahard.pojo;

public class admin {
	private int adminid; 
	private int admincid; //±àºÅ
	private String adminName; //ĞÕÃû
	private String adminsex; //ĞÔ±ğ
	private int adminage;
	private int adminphoto;  //µç»°
	private String adminmall; //ÓÊÏä
	private String adminaddress; //µØÖ·
	private double adminuid; //ÕËºÅ
	private int adminpassword;  //ÃÜÂë
	public int getAdminid() {
		return adminid;
	}
	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}
	public int getAdmincid() {
		return admincid;
	}
	public void setAdmincid(int admincid) {
		this.admincid = admincid;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminsex() {
		return adminsex;
	}
	public void setAdminsex(String adminsex) {
		this.adminsex = adminsex;
	}
	public int getAdminage() {
		return adminage;
	}
	public void setAdminage(int adminage) {
		this.adminage = adminage;
	}
	public int getAdminphoto() {
		return adminphoto;
	}
	public void setAdminphoto(int adminphoto) {
		this.adminphoto = adminphoto;
	}
	public String getAdminmall() {
		return adminmall;
	}
	public void setAdminmall(String adminmall) {
		this.adminmall = adminmall;
	}
	public String getAdminaddress() {
		return adminaddress;
	}
	public void setAdminaddress(String adminaddress) {
		this.adminaddress = adminaddress;
	}
	public double getAdminuid() {
		return adminuid;
	}
	public void setAdminuid(double adminuid) {
		this.adminuid = adminuid;
	}
	public int getAdminpassword() {
		return adminpassword;
	}
	public void setAdminpassword(int adminpassword) {
		this.adminpassword = adminpassword;
	}
	@Override
	public String toString() {
		return "admin [adminid=" + adminid + ", admincid=" + admincid + ", adminName=" + adminName + ", adminsex="
				+ adminsex + ", adminage=" + adminage + ", adminphoto=" + adminphoto + ", adminmall=" + adminmall
				+ ", adminaddress=" + adminaddress + ", adminuid=" + adminuid + ", adminpassword=" + adminpassword
				+ "]";
	}
	
	
}
