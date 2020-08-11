package com.human.dto;

public class ReviewDto {
	private String customerID;
	private int orderID;
	private int productID;
	private String productName;
	private String picture;
	private String boardTitle;
	private String boardContent;
	private String boardDate;
	private int boardNum;
	private String orderDate;
	private String fileNewName;
	private String fileOrgName;
	public ReviewDto() {};
	
	
	
	public String getFileNewName() {
		return fileNewName;
	}



	public void setFileNewName(String fileNewName) {
		this.fileNewName = fileNewName;
	}



	public String getFileOrgName() {
		return fileOrgName;
	}



	public void setFileOrgName(String fileOrgName) {
		this.fileOrgName = fileOrgName;
	}



	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}


	public String getCustomerID() {
		return customerID;
	}
	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}
	public int getOrderID() {
		return orderID;
	}
	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
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
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}
	
	public int getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}



	@Override
	public String toString() {
		return "ReviewDto [customerID=" + customerID + ", orderID=" + orderID + ", productID=" + productID
				+ ", productName=" + productName + ", picture=" + picture + ", boardTitle=" + boardTitle
				+ ", boardContent=" + boardContent + ", boardDate=" + boardDate + ", boardNum=" + boardNum
				+ ", orderDate=" + orderDate + ", fileNewName=" + fileNewName + ", fileOrgName=" + fileOrgName + "]";
	}


	

	
	
	
	
}
