package com.human.dto;

public class QnaDto {
	private int rn;
	private int boardNum; 			//게시물번호
	private String boardOption; 	//문의종류
	private String boardAnswered; 	//답변상태
	private String boardTitle; 	    //글 제목
	private String customerID; 	//작성자
	private String boardDate; 		//작성일
	private String boardContent; 	//글내용
	private int boardHit; 			//조회수
	private String boardCondition; 	//비밀글여뷰 
	private int orderID; 		//비밀글 비밀번호
	private int boardGroup;			//그룹번호
	private int boardStep; 			//그룹 내 순서
	private int boardIndent; 		//그룹 내 계층
	private String boardDel; 		//게시글 삭제여부
	private String boardEtc1; 		//기타
	private String productID;
	
	
	public int getRn() {
		return rn;
	}
	public void setRn(int rn) {
		this.rn = rn;
	}
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getBoardOption() {
		return boardOption;
	}
	public void setBoardOption(String boardOption) {
		this.boardOption = boardOption;
	}
	public String getBoardAnswered() {
		return boardAnswered;
	}
	public void setBoardAnswered(String boardAnswered) {
		this.boardAnswered = boardAnswered;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getCustomerID() {
		return customerID;
	}
	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}
	public String getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public int getBoardHit() {
		return boardHit;
	}
	public void setBoardHit(int boardHit) {
		this.boardHit = boardHit;
	}
	public String getBoardCondition() {
		return boardCondition;
	}
	public void setBoardCondition(String boardCondition) {
		this.boardCondition = boardCondition;
	}
	
	public int getOrderID() {
		return orderID;
	}
	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}
	public int getBoardGroup() {
		return boardGroup;
	}
	public void setBoardGroup(int boardGroup) {
		this.boardGroup = boardGroup;
	}
	public int getBoardStep() {
		return boardStep;
	}
	public void setBoardStep(int boardStep) {
		this.boardStep = boardStep;
	}
	public int getBoardIndent() {
		return boardIndent;
	}
	public void setBoardIndent(int boardIndent) {
		this.boardIndent = boardIndent;
	}
	public String getBoardDel() {
		return boardDel;
	}
	public void setBoardDel(String boardDel) {
		this.boardDel = boardDel;
	}
	public String getBoardEtc1() {
		return boardEtc1;
	}
	public void setBoardEtc1(String boardEtc1) {
		this.boardEtc1 = boardEtc1;
	}
	
	
	
	
	

	
	
}
