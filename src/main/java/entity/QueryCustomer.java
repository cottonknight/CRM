package entity;

public class QueryCustomer {
	private String uname;
	private int hangye=0;
	private int jibie=0;
	private Integer page=1;
	private Integer rows=2;
	private Integer last;
	private Integer next;
	private Integer pageCount;
	private Integer start;
	
	
	
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getLast() {
		return last;
	}
	public void setLast(Integer last) {
		this.last = last;
	}
	public Integer getNext() {
		return next;
	}
	public void setNext(Integer next) {
		this.next = next;
	}
	public Integer getPageCount() {
		return pageCount;
	}
	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public int getHangye() {
		return hangye;
	}
	public void setHangye(int hangye) {
		this.hangye = hangye;
	}
	public int getJibie() {
		return jibie;
	}
	public void setJibie(int jibie) {
		this.jibie = jibie;
	}
	public QueryCustomer(String uname, int hangye, int jibie) {
		super();
		this.uname = uname;
		this.hangye = hangye;
		this.jibie = jibie;
	}
	public QueryCustomer() {
		super();
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	
	
}
