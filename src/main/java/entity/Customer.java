package entity;

public class Customer {
	private int uid;
	private String uname;
	private Type hangye;
	private Type jibie;
	private String shouji;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public Type getHangye() {
		return hangye;
	}
	public void setHangye(Type hangye) {
		this.hangye = hangye;
	}
	public Type getJibie() {
		return jibie;
	}
	public void setJibie(Type jibie) {
		this.jibie = jibie;
	}
	public String getShouji() {
		return shouji;
	}
	public void setShouji(String shouji) {
		this.shouji = shouji;
	}
	public Customer(String uname, Type hangye, Type jibie) {
		super();
		this.uname = uname;
		this.hangye = hangye;
		this.jibie = jibie;
	}
	public Customer() {
		super();
	}
	@Override
	public String toString() {
		return "Customer [uid=" + uid + ", uname=" + uname + ", hangye=" + hangye + ", jibie=" + jibie + ", shouji="
				+ shouji + "]";
	}
	
	
	
}
