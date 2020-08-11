package com.human.dto;

public class BoardProductDto {
	private int rn;
	private int boardNum; 			//게시물번호
	private String boardOption; 	//문의종류
	private String boardAnswered; 	//답변상태
	private String boardTitle; 	    //글 제목
	private String customerID; 	//작성자
	private String boardDate; 		//작성일
	private String boardContent; 	//글내용
	private int boardHit; 			//조회수
	private String boardContition; 	//비밀글여뷰 
	private int orderID; 		//비밀글 비밀번호
	private int boardGroup;			//그룹번호
	private int boardStep; 			//그룹 내 순서
	private int boardIndent; 		//그룹 내 계층
	private String boardDel;		//게시글 삭제여부
	private int productID;	//productID 외래키
	private String boardEtc1; 		//기타
	private String productName;
	private String picture;
	
	public BoardProductDto() {}
	
	public BoardProductDto(int rn, int boardNum, String boardOption, String boardAnswered, String boardTitle, String customerID,
			String boardDate, String boardContent, int boardHit, String boardContition, int orderID, int boardGroup,
			int boardStep, int boardIndent, String boardDel, int productID, String boardEtc1, String productName,
			String picture) {
		super();
		this.rn = rn;
		this.boardNum = boardNum;
		this.boardOption = boardOption;
		this.boardAnswered = boardAnswered;
		this.boardTitle = boardTitle;
		this.customerID = customerID;
		this.boardDate = boardDate;
		this.boardContent = boardContent;
		this.boardHit = boardHit;
		this.boardContition = boardContition;
		this.orderID = orderID;
		this.boardGroup = boardGroup;
		this.boardStep = boardStep;
		this.boardIndent = boardIndent;
		this.boardDel = boardDel;
		this.productID = productID;
		this.boardEtc1 = boardEtc1;
		this.productName = productName;
		this.picture = picture;
	}

	
	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
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

	public String getBoardContition() {
		return boardContition;
	}

	public void setBoardContition(String boardContition) {
		this.boardContition = boardContition;
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

	public int getProductID() {
		return productID;
	}

	public void setProductID(int productID) {
		this.productID = productID;
	}

	public String getBoardEtc1() {
		return boardEtc1;
	}

	public void setBoardEtc1(String boardEtc1) {
		this.boardEtc1 = boardEtc1;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	@Override
	public String toString() {
		return "BoardProductDto [boardNum=" + boardNum + ", boardOption=" + boardOption + ", boardAnswered="
				+ boardAnswered + ", boardTitle=" + boardTitle + ", customerID=" + customerID + ", boardDate="
				+ boardDate + ", boardContent=" + boardContent + ", boardHit=" + boardHit + ", boardContition="
				+ boardContition + ", orderID=" + orderID + ", boardGroup=" + boardGroup + ", boardStep=" + boardStep
				+ ", boardIndent=" + boardIndent + ", boardDel=" + boardDel + ", productID=" + productID
				+ ", boardEtc1=" + boardEtc1 + ", productName=" + productName + ", picture=" + picture + "]";
	}
	
	
}
