package com.shose.DTO;

import java.sql.Date;

public class MemberDTO {
	
	private String mid;
	private String mpw;
	private String mname;
	private String mphone ;
	private String mjuso;
	private String memail;
	private String mbirth;
	private String mmen;
    private Date regdate;
    
    
	public MemberDTO(String mid, String mpw, String mname, String mphone, String mjuso, String memail, String mbirth,
			String mmen, Date regdate) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.mphone = mphone;
		this.mjuso = mjuso;
		this.memail = memail;
		this.mbirth = mbirth;
		this.mmen = mmen;
		this.regdate = regdate;
	}


	public MemberDTO(String mid, String mpw, String mname, String mphone, String memail) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.mphone = mphone;
		this.memail = memail;
	}


	public String getMid() {
		return mid;
	}


	public void setMid(String mid) {
		this.mid = mid;
	}


	public String getMpw() {
		return mpw;
	}


	public void setMpw(String mpw) {
		this.mpw = mpw;
	}


	public String getMname() {
		return mname;
	}


	public void setMname(String mname) {
		this.mname = mname;
	}


	public String getMphone() {
		return mphone;
	}


	public void setMphone(String mphone) {
		this.mphone = mphone;
	}


	public String getMjuso() {
		return mjuso;
	}


	public void setMjuso(String mjuso) {
		this.mjuso = mjuso;
	}


	public String getMemail() {
		return memail;
	}


	public void setMemail(String memail) {
		this.memail = memail;
	}


	public String getMbirth() {
		return mbirth;
	}


	public void setMbirth(String mbirth) {
		this.mbirth = mbirth;
	}


	public String getMmen() {
		return mmen;
	}


	public void setMmen(String mmen) {
		this.mmen = mmen;
	}


	public Date getRegdate() {
		return regdate;
	}


	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
    
	
    

}
