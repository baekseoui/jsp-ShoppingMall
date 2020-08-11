package com.human.dto;

public class ReplyDto {
	private String replyName;		
	private int boardNum;			
	private String replyContent;	
	private String replyDate;		
	private int replyGroup;			
	private int replyStep;			
	private int replyIndent;		
	private String replyDel;		
	private String replyEtc1;		
	private String replyEtc2;		
	
	
	public ReplyDto() {}
	public ReplyDto(String replyName, int boardNum, String replyContent, String replyDate, int replyGroup,
			int replyStep, int replyIndent, String replyDel, String replyEtc1, String replyEtc2) {
		super();
		this.replyName = replyName;
		this.boardNum = boardNum;
		this.replyContent = replyContent;
		this.replyDate = replyDate;
		this.replyGroup = replyGroup;
		this.replyStep = replyStep;
		this.replyIndent = replyIndent;
		this.replyDel = replyDel;
		this.replyEtc1 = replyEtc1;
		this.replyEtc2 = replyEtc2;
	}
	
	
	@Override
	public String toString() {
		return "ReplyDto [replyName=" + replyName + ", boardNum=" + boardNum + ", replyContent=" + replyContent
				+ ", replyDate=" + replyDate + ", replyGroup=" + replyGroup + ", replyStep=" + replyStep
				+ ", replyIndent=" + replyIndent + ", replyDel=" + replyDel + ", replyEtc1=" + replyEtc1
				+ ", replyEtc2=" + replyEtc2 + "]";
	}
	public String getReplyName() {
		return replyName;
	}
	public void setReplyName(String replyName) {
		this.replyName = replyName;
	}
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public String getReplyDate() {
		return replyDate;
	}
	public void setReplyDate(String replyDate) {
		this.replyDate = replyDate;
	}
	public int getReplyGroup() {
		return replyGroup;
	}
	public void setReplyGroup(int replyGroup) {
		this.replyGroup = replyGroup;
	}
	public int getReplyStep() {
		return replyStep;
	}
	public void setReplyStep(int replyStep) {
		this.replyStep = replyStep;
	}
	public int getReplyIndent() {
		return replyIndent;
	}
	public void setReplyIndent(int replyIndent) {
		this.replyIndent = replyIndent;
	}
	public String getReplyDel() {
		return replyDel;
	}
	public void setReplyDel(String replyDel) {
		this.replyDel = replyDel;
	}
	public String getReplyEtc1() {
		return replyEtc1;
	}
	public void setReplyEtc1(String replyEtc1) {
		this.replyEtc1 = replyEtc1;
	}
	public String getReplyEtc2() {
		return replyEtc2;
	}
	public void setReplyEtc2(String replyEtc2) {
		this.replyEtc2 = replyEtc2;
	}
	
}
