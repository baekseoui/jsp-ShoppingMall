package com.human.dto;

public class BPageDto {
	private int pageDataCount;// 한 페이지에 보여질 게시글의 수
	private int currentPageNum; // 현재 페이지
	private int totalDataCount;// 전체 데이터 개수
	private int pageSize;// 한 페이지에 보여줄 페이지의 개수
	
	private int firstPageNum;// 전체 페이지 중 첫 페이지 번호
	private int lastPageNum;// 전체 페이지 중 마지막 페이지 번호
	private int prevPageNum;// 이전 페이지 번호
	private int nextPageNum;// 다음페이지 번호
	private int startPageNum;// 페이징의 시작페이지 번호
	private int endPageNum;// 페이징의 마지막 페이지 번호.
	
	
	
	public void makePage(int page, int pageDataCount, int totalDataCount) {
		if(totalDataCount==0) return;// 0이면 문제있음
		System.out.println("totalDataCount : "+totalDataCount);
		this.totalDataCount=totalDataCount;
		this.currentPageNum=page;
		this.pageDataCount=pageDataCount;
		
		
		this.pageSize=10;// 페이지를 10개씩 보여줌
		this.firstPageNum=1;// 스타트 페이지
		this.lastPageNum = ((totalDataCount-1)/pageDataCount)+1; // 마지막 페이지 번호를 넣어줘야함.
		// 시작 페이지
		this.startPageNum = ((this.currentPageNum-1)/this.pageSize)*pageSize+1;
		this.endPageNum=this.startPageNum+(pageSize-1);//9=pagesize-1
		
		if(this.endPageNum > this.lastPageNum) {
			this.endPageNum=lastPageNum;
		}
		
		this.prevPageNum=this.startPageNum-this.pageSize;
		//���� ������ ������ �ʰ� ó��
		if(this.prevPageNum<1) {
			prevPageNum=1;
		}
		
		this.nextPageNum=this.endPageNum+this.pageSize;
		if(this.nextPageNum>this.lastPageNum) {
			this.nextPageNum=this.lastPageNum;
		}
		
	}
	
	@Override
	public String toString() {
		return "BPageDto [pageDataCount=" + pageDataCount + ", currentPageNum=" + currentPageNum + ", totalDataCount="
				+ totalDataCount + ", pageSize=" + pageSize +  ", firstPageNum=" + firstPageNum
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
	public int getTotalCount() {
		return totalDataCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalDataCount = totalCount;
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
