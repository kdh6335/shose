package com.shose.DTO;

import java.util.Date;

public class BoardDTO {
	
	private int bno;
	private String  title;
	private String  content;
	private String  writer;
	private Date regdate;
	private int viewont;
	private int sweet;
	
	
	
	
	public BoardDTO() {}
	
	public BoardDTO(int bno, String title, String content, String writer, Date regdate, int viewont) {
		super();
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.regdate = regdate;
		this.viewont = viewont;
	}
	
	


	public BoardDTO(String title, String content, String writer) {
		super();
		this.title = title;
		this.content = content;
		this.writer = writer;
	}
	
	

	public BoardDTO(int bno, String title, String content, String writer) {
		super();
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.writer = writer;
	}

	public int getBno() {
		return bno;
	}


	public void setBno(int bno) {
		this.bno = bno;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getWriter() {
		return writer;
	}


	public void setWriter(String writer) {
		this.writer = writer;
	}


	public Date getRegdate() {
		return regdate;
	}


	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}


	public int getViewont() {
		return viewont;
	}


	public void setViewont(int viewont) {
		this.viewont = viewont;
	}

	public int getSweet() {
		return sweet;
	}

	public void setSweet(int sweet) {
		this.sweet = sweet;
	}
	
	
	
	
	
	
}
