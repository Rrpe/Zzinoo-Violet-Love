package com.javalec.ex.dto;

public class SignDto {  // DTO 데이터베이스에서 데이터를 가져오는 부분 (해당 테이블이랑 똑같다)
	String userID;
	String userPWD;
	String userNAME;
	String userNICNAME;
	String userEMAIL;
	String userKEY;
	
	public SignDto() {
		// TODO Auto-generated constructor stub
	}
	
	public SignDto(String userID, String userPWD, String userNAME, String userNICNAME, String userEMAIL, String userKEY) {
		this.userID = userID;
		this.userPWD = userPWD;
		this.userNAME = userNAME;
		this.userNICNAME = userNICNAME;
		this.userEMAIL = userEMAIL;
		this.userKEY = userKEY;
	}

	public String getUserKEY() {
		return userKEY;
	}

	public void setUserKEY(String userKEY) {
		this.userKEY = userKEY;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserPWD() {
		return userPWD;
	}

	public void setUserPWD(String userPWD) {
		this.userPWD = userPWD;
	}

	public String getUserNAME() {
		return userNAME;
	}

	public void setUserNAME(String userNAME) {
		this.userNAME = userNAME;
	}

	public String getUserNICNAME() {
		return userNICNAME;
	}

	public void setUserNICNAME(String userNICNAME) {
		this.userNICNAME = userNICNAME;
	}

	public String getUserEMAIL() {
		return userEMAIL;
	}

	public void setUserEMAIL(String userEMAIL) {
		this.userEMAIL = userEMAIL;
	}
	
}
