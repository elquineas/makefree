package com.makefree.dto;

import java.util.Date;

public class BoardDTO {
	private String bno;
	private String title; 
	private String content;
	private String writer;
	private Date regdate;
	private int viewcnt;
	private int replycnt;
	private int goodcnt;
	private String filename;
	private int filesize;
	
	public BoardDTO() {
		
	}
	
	public BoardDTO(String title, String content, String writer) {
		super();
		this.title = title;
		this.content = content;
		this.writer = writer;
	}


	public BoardDTO(String bno, String writer) {
		super();
		this.bno = bno;
		this.writer = writer;
	}
	
	public BoardDTO(String bno, String title, String content, String writer, Date regdate, int viewcnt, int replycnt,
			int goodcnt, String filename, int filesize) {
		super();
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.regdate = regdate;
		this.viewcnt = viewcnt;
		this.replycnt = replycnt;
		this.goodcnt = goodcnt;
		this.filename = filename;
		this.filesize = filesize;
	}

	public String getBno() {
		return bno;
	}

	public void setBno(String bno) {
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

	public int getViewcnt() {
		return viewcnt;
	}

	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}

	public int getReplycnt() {
		return replycnt;
	}

	public void setReplycnt(int replycnt) {
		this.replycnt = replycnt;
	}

	public int getGoodcnt() {
		return goodcnt;
	}

	public void setGoodcnt(int goodcnt) {
		this.goodcnt = goodcnt;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getFilesize() {
		return filesize;
	}

	public void setFilesize(int filesize) {
		this.filesize = filesize;
	}

	@Override
	public String toString() {
		return "BoardDTO [bno=" + bno + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", regdate=" + regdate + ", viewcnt=" + viewcnt + ", replycnt=" + replycnt + ", goodcnt=" + goodcnt
				+ ", filename=" + filename + ", filesize=" + filesize + "]";
	}
	
	
}

