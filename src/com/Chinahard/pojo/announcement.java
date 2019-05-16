package com.Chinahard.pojo;

public class announcement {
	private int gid;
	private String announcement;
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getAnnouncement() {
		return announcement;
	}
	public void setAnnouncement(String announcement) {
		this.announcement = announcement;
	}
	@Override
	public String toString() {
		return "announcement [gid=" + gid + ", announcement=" + announcement + "]";
	}
	

}
