package com.javalec.ex.dto;

import java.sql.Timestamp;

public class BDto {  // DTO 데이터베이스에서 데이터를 가져오는 부분 (해당 테이블이랑 똑같다)

	int bId;
	String userID;
	String bTitle;
	String bContent;
	Timestamp bDate;
	int bHit;
	int bGroup;
	int bStep;
	int bIndent;
	String Namee;
	
	public BDto() {
		// TODO Auto-generated constructor stub
	}
	
	public BDto(int bId, String userID, String bTitle, String bContent, Timestamp bDate, int bHit, int bGroup, int bStep, int bIndent, String Namee) {
		// TODO Auto-generated constructor stub
		this.bId = bId;
		this.userID = userID;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bDate = bDate;
		this.bHit = bHit;
		this.bGroup = bGroup;
		this.bStep = bStep;
		this.bIndent = bIndent;
		this.Namee = Namee;
	}

	public String getNamee() {
		return Namee;
	}

	public void setNamee(String Namee) {
		this.Namee = Namee;
	}
	
	public int getbId() {
		return bId;
	}

	public void setbId(int bId) {
		this.bId = bId;
	}

	public String getuserID() {
		return userID;
	}

	public void setuserID(String userID) {
		this.userID = userID;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public Timestamp getbDate() {
		return bDate;
	}

	public void setbDate(Timestamp bDate) {
		this.bDate = bDate;
	}

	public int getbHit() {
		return bHit;
	}

	public void setbHit(int bHit) {
		this.bHit = bHit;
	}

	public int getbGroup() {
		return bGroup;
	}

	public void setbGroup(int bGroup) {
		this.bGroup = bGroup;
	}

	public int getbStep() {
		return bStep;
	}

	public void setbStep(int bStep) {
		this.bStep = bStep;
	}

	public int getbIndent() {
		return bIndent;
	}

	public void setbIndent(int bIndent) {
		this.bIndent = bIndent;
	}
	
}
