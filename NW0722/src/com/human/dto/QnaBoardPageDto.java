package com.human.dto;

public class QnaBoardPageDto {
	private int pageDataCount;//한 목록화면에 보여줄 게시글 수
	private int currentPageNum;//현재 페이지
	private int totalDataCount;//전체 데이터 개수
	
	private int pageSize;//한 페이지에 보여줄 페이지 개수
	private int firstPageNum;//전체 페이지의 첫번째 페이지 번호
	private int lastPageNum;//전체 페이지의 마지막 페이지 번호
	private int prevPageNum;//이전페이지 목록
	private int nextPageNum;//다음페이지 목록
	private int startPageNum;//페이징의 시작 페이지 번호
	private int endPageNum;//페이징의 마지막 페이지 번호
	
	public void makePage(int page,int pageDataCount,int totalDataCount) {
		if(totalDataCount==0) return;
		this.currentPageNum=page;
		this.pageDataCount=pageDataCount;
		this.totalDataCount=totalDataCount;
		
		this.pageSize=5;
		
		this.firstPageNum=1;
		this.lastPageNum=(totalDataCount-1)/pageDataCount+1;
		
		this.startPageNum=((this.currentPageNum-1)/this.pageSize)*5+1;
		this.endPageNum=this.startPageNum+4;
		
		if(this.endPageNum > this.lastPageNum) {
			this.endPageNum=this.lastPageNum;
		}
		
		this.prevPageNum=this.endPageNum-this.pageSize;
		if(this.prevPageNum<1) {
			prevPageNum=1;
		}
		
		this.nextPageNum=this.startPageNum+this.pageSize;
		if(this.nextPageNum>this.lastPageNum) {
			this.nextPageNum=this.lastPageNum;
		}
		
	};
	
	@Override
	public String toString() {
		return "BPageDto [pageDataCount=" + pageDataCount + ", currentPageNum=" + currentPageNum + ", totalDataCount="
				+ totalDataCount + ", pageSize=" + pageSize + ", firstPageNum=" + firstPageNum
				+ ", lastPageNum=" + lastPageNum + ", prevPageNum=" + prevPageNum + ", nextPageNum=" + nextPageNum
				+ ", startPageNum=" + startPageNum + ", endPageNum=" + endPageNum + "]";
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalDataCount() {
		return totalDataCount;
	}

	public void setTotalDataCount(int totalDataCount) {
		this.totalDataCount = totalDataCount;
	}

	public int getStartPageNum() {
		return startPageNum;
	}

	public void setStartPageNum(int startPageNum) {
		this.startPageNum = startPageNum;
	}

	public int getEndPageNum() {
		return endPageNum;
	}

	public void setEndPageNum(int endPageNum) {
		this.endPageNum = endPageNum;
	}

	public int getPageDataCount() {
		return pageDataCount;
	}
	public void setPageDataCount(int pageDataCount) {
		this.pageDataCount = pageDataCount;
	}
	public int getCurrentPageNum() {
		return currentPageNum;
	}
	public void setCurrentPageNum(int currentPageNum) {
		this.currentPageNum = currentPageNum;
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
	public int getPrevPageNum() {
		return prevPageNum;
	}
	public void setPrevPageNum(int prevPageNum) {
		this.prevPageNum = prevPageNum;
	}
	public int getNextPageNum() {
		return nextPageNum;
	}
	public void setNextPageNum(int nextPageNum) {
		this.nextPageNum = nextPageNum;
	}

	
	
}
