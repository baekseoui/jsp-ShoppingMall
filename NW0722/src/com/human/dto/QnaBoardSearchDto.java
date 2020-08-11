package com.human.dto;

public class QnaBoardSearchDto extends QnaBoardPageDto {
	private String searchVal;
	private String searchCol;
	private String productID;
	
	

	public void makePage(int page,int pageDataCount,int totalDataCount,String searchCol,String searchVal,String productID) {
		makePage(page,pageDataCount,totalDataCount);
		this.productID=productID;
		this.searchCol=searchCol;
		this.searchVal=searchVal;
		
	};

	@Override
	public String toString() {
		return "QnaBoardSearchDto [searchVal=" + searchVal + ", searchCol=" + searchCol + ", productID=" + productID
				+ "]";
	}
	
	public String getSearchVal() {
		return searchVal;
	}
	public void setSearchVal(String searchVal) {
		this.searchVal = searchVal;
	}
	public String getSearchCol() {
		return searchCol;
	}
	public void setSearchCol(String searchCol) {
		this.searchCol = searchCol;
	}
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	
	
}
