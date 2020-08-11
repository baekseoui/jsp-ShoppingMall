package com.human.dto;



public class PageDto {
	
	private int viewPage;				//현재 페이지
	private int firstPage;				//현재 페이지들의 첫 페이지
	private int lastPage;				//현재 페이지의 마지막 페이지
	private int totalPage;				//전체 페이지 수 
	private int totalCol;				//전체 컬럼 수
	    
	
	public PageDto() {};
	
	
	//	현재 페이지 1
	
	//	다음버튼을 누르면 1~5 에서 6~10이 되야함
	//	1~5이상을 출력중이면 이전버튼 출력 
	//  마지막 번호가 있는 칸은 마지막 번호까지만 출력
	//((페이지 번호 -1) / 총 페이지 사이즈 ) * 총 페이지 사이즈 + 1
	
	public int getViewPage() {
		return viewPage;
	}
	public void setViewPage(int viewPage) {
		this.viewPage = viewPage;
	}
	public int getFirstPage() {
		return firstPage;
	}
	public void setFirstPage(int firstPage) {
		this.firstPage = firstPage;
	}
	public int getLastPage() {
		return lastPage;
	}
	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getTotalCol() {
		return totalCol;
	}
	public void setTotalCol(int totalCol) {
		this.totalCol = totalCol;
	}
	
	
	
	
	
	
	
}
