package com.makefree.dto;

public class CriteriaDTO {
	private int page;
	private int perPageNum;
	private String keyword;
	private String flag;
	private String code;
	
	public CriteriaDTO() {
		//Defaule로 게시판 목록 출력시 1페이지에 10개의 게시물을 출력함.
		this.page = 1;
		this.perPageNum = 10;
	}

	public CriteriaDTO(int page, int perPageNum, String keyword, String flag, String code) {
		super();
		this.page = page;
		this.perPageNum = perPageNum;
		this.keyword = keyword;
		this.flag = flag;
		this.code = code;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if(page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}
	
	//조회 시작 row 취득하는 메서드
	public int getPageStart() {
		return (((this.page - 1) * perPageNum) + 1);
	}
	
	//조회 마지막 row 취득하는 메서드
	public int getPerPageNum() {
		return this.page * perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	@Override
	public String toString() {
		return "CriteriaDTO [page=" + page + ", perPageNum=" + perPageNum + ", keyword=" + keyword + ", flag=" + flag
				+ ", code=" + code + "]";
	}

	
	
}
