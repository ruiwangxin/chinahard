package com.Chinahard.pojo;

public class Page {
	int start; //总共能显示5页，让用户进行点击，7为起始页
	int count; //每页显示记录条数
	int total; //总条数
	String param;
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Page(int start, int count) {
		super();
		this.start = start;
		this.count = count;
	}
	
	public boolean isHasPreviouse(){
		if(start==0)
			return false;
		return true;
		
	}
	public boolean isHasNext(){
		if(start==getLast())
			return false;
		return true;
	}
	
	public int getTotalPage(){
		
		int totalPage;
        if (0 == total % count)
            totalPage = total /count;
        else
            totalPage = total / count + 1;
        
        if(0==totalPage)
        	totalPage = 1;
        return totalPage;
		
	}
	
	public int getLast(){
		//最后一页
				int last;
		        // 假设总数是50，是能够被5整除的，那么最后一页的开始就是45
		        if (0 == total % count)
		            last = total - count;
		        // 假设总数是51，不能够被5整除的，那么最后一页的开始就是50
        else
            last = total - total % count;
        
        last = last<0?0:last;
        return last;
	}
	
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public String getParam() {
		return param;
	}
	public void setParam(String param) {
		this.param = param;
	}
	
}
