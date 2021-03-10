package entity;

public class Type {
	private int cid;
	private String ctype;
	private String cname;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Type(int cid) {
		super();
		this.cid = cid;
	}
	public Type() {
		super();
	}
	
	
}
