package com.human.dto;

public class GetOrderPageDto {

	private int pageDataCount;
	private int totalDataCount;
	private int firstPageNum;
	private int lastPageNum;
	private int currentPageNum;

	public void makePage(int page, int totalDataCount) {
		if (totalDataCount == 0) {
			return;
		}
		this.currentPageNum = page;
		this.pageDataCount = 5;
		this.totalDataCount = totalDataCount;
		this.firstPageNum = 1;
		this.lastPageNum = ((totalDataCount - 1) / pageDataCount)+1;
		
	}

	public int getPageDataCount() {
		return pageDataCount;
	}

	public void setPageDataCount(int pageDataCount) {
		this.pageDataCount = pageDataCount;
	}

	public int getTotalDataCount() {
		return totalDataCount;
	}

	public void setTotalDataCount(int totalDataCount) {
		this.totalDataCount = totalDataCount;
	}

	public int getFirstPageNum() {
		return firstPageNum;
	}

	public void setFirstPageNum(int firstPageNum) {
		this.firstPageNum = firstPageNum;
	}

	public int getLastPageNum() {
		return lastPageNum;
	}

	public void setLastPageNum(int lastPageNum) {
		this.lastPageNum = lastPageNum;
	}

	public int getCurrentPageNum() {
		return currentPageNum;
	}

	public void setCurrentPageNum(int currentPageNum) {
		this.currentPageNum = currentPageNum;
	}

}
