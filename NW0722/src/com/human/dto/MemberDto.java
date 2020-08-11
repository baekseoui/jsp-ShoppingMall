package com.human.dto;

public class MemberDto {

	private int newNum; // --번호
	private String newID; // --아이디
	private String newPw; // --비번
	private String newName; // --이름
	private String newDate; //--생일
	private String newPhone; // --폰번호
	private String newEmail;// --이메일
	private String newRank; // -- 관리자, 사용자 분류
	private String newDel; //--회원삭제여부
	private String newEtc1; //
	
	
	
	@Override
	public String toString() {
		return "MemberLoginDto [newNum=" + newNum + ", newID=" + newID + ", newPw=" + newPw + ", newName=" + newName
				+ ", newDate=" + newDate + ", newPhone=" + newPhone + ", newEmail=" + newEmail + ", newRank=" + newRank
				+ ", newDel=" + newDel + ", newEtc1=" + newEtc1 + "]";
	}
	public int getNewNum() {
		return newNum;
	}
	public void setNewNum(int newNum) {
		this.newNum = newNum;
	}
	public String getNewID() {
		return newID;
	}
	public void setNewID(String newID) {
		this.newID = newID;
	}
	public String getNewPw() {
		return newPw;
	}
	public void setNewPw(String newPw) {
		this.newPw = newPw;
	}
	public String getNewName() {
		return newName;
	}
	public void setNewName(String newName) {
		this.newName = newName;
	}
	public String getNewDate() {
		return newDate;
	}
	public void setNewDate(String newDate) {
		this.newDate = newDate;
	}
	public String getNewPhone() {
		return newPhone;
	}
	public void setNewPhone(String newPhone) {
		this.newPhone = newPhone;
	}
	public String getNewEmail() {
		return newEmail;
	}
	public void setNewEmail(String newEmail) {
		this.newEmail = newEmail;
	}
	public String getNewRank() {
		return newRank;
	}
	public void setNewRank(String newRank) {
		this.newRank = newRank;
	}
	public String getNewDel() {
		return newDel;
	}
	public void setNewDel(String newDel) {
		this.newDel = newDel;
	}
	public String getNewEtc1() {
		return newEtc1;
	}
	public void setNewEtc1(String newEtc1) {
		this.newEtc1 = newEtc1;
	}
	public MemberDto() {};
	public MemberDto(int newNum, String newID, String newPw, String newName, String newDate, String newPhone,
			String newEmail, String newRank, String newDel, String newEtc1) {
		super();
		this.newNum = newNum;
		this.newID = newID;
		this.newPw = newPw;
		this.newName = newName;
		this.newDate = newDate;
		this.newPhone = newPhone;
		this.newEmail = newEmail;
		this.newRank = newRank;
		this.newDel = newDel;
		this.newEtc1 = newEtc1;
	}
	
	
	
	
}



