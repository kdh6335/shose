package com.shose.DTO;

// 검색 기준 또는 분류기준

public class CriteriaDTO {
	
	private int page; // 페이지번호(하단의 번호들 클릭)
	private int perPageNum; //한페이지에 보여줄 게시글 수

	public CriteriaDTO() {
		
		this.page = 1;
		this.perPageNum = 10;
	}
	
	

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if(page <=0) {
			
			this.page=1;
			return;
		}
		
		this.page = page;
	}
	
	// method for MyBatis SQL Mapper; 조회 시작 Row 취득하는 메서드
	public int getPageStart() {
		return (((this.page-1)*perPageNum)+1);
	}

	
	// method fir NyBatis SQL Mapper: 조회 마지막 row 취득하는 메서드
	public int getPerPageNum() {
		return this.page * perPageNum;
		// 2페이지 x 10 = 20번 게시글까지 출력
	}

	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}
	
	
	
}
