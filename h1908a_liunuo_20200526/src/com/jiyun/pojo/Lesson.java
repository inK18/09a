package com.jiyun.pojo;

public class Lesson {

	private Integer id;
	private String kname;
	private String sum;
	private String jname;
	private Integer aid;
	private Integer bid;
	private Integer cid;
	private String aname;
	private String bname;
	private String cname;
	private String sum1;
	private String sum2;
	
	public String getSum1() {
		return sum1;
	}
	public void setSum1(String sum1) {
		this.sum1 = sum1;
	}
	public String getSum2() {
		return sum2;
	}
	public void setSum2(String sum2) {
		this.sum2 = sum2;
	}
	public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getKname() {
		return kname;
	}
	public void setKname(String kname) {
		this.kname = kname;
	}
	public String getSum() {
		return sum;
	}
	public void setSum(String sum) {
		this.sum = sum;
	}
	public String getJname() {
		return jname;
	}
	public void setJname(String jname) {
		this.jname = jname;
	}
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	@Override
	public String toString() {
		return "Lesson [id=" + id + ", kname=" + kname + ", sum=" + sum + ", jname=" + jname + ", aid=" + aid + ", bid="
				+ bid + ", cid=" + cid + ", aname=" + aname + ", bname=" + bname + ", cname=" + cname + ", sum1=" + sum1
				+ ", sum2=" + sum2 + "]";
	}
	
	
	
	
}
