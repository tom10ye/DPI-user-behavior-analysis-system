package cn.fudanyang.pojo;

public class ClickPojo {
	private int id;
	private String sourceIP;
	private String destIP;
	private String title;
	private String time;
	private int count;
    
	public int getCount() {
		return count;
	}


	public void setCount(int count) {
		this.count = count;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getSourceIP() {
		return sourceIP;
	}


	public void setSourceIP(String sourceIP) {
		this.sourceIP = sourceIP;
	}


	public String getDestIP() {
		return destIP;
	}


	public void setDestIP(String destIP) {
		this.destIP = destIP;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}


	@Override
	public String toString(){
		String message="Click! id= "+id+"  src_ip="+sourceIP+"  des_ip"+destIP;
		return message;
	}

}
