package com.human.dto;

public class CategorysDto {
	private String categoryID;
	private String categoryName; 
	private String categoryDescription;
	private String picture;
	public CategorysDto() {}
	
	public CategorysDto(String categoryID,String categoryName) {
		this.categoryID = categoryID;
		this.categoryName = categoryName;
	}
	
	public String getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(String categoryID) {
		this.categoryID = categoryID;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getCategoryDescription() {
		return categoryDescription;
	}
	public void setCategoryDescription(String categoryDescription) {
		this.categoryDescription = categoryDescription;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	@Override
	public String toString() {
		return "카테고리정보 [categoryID=" + categoryID + ", categoryName=" + categoryName + ", categoryDescription="
				+ categoryDescription + "]";
	}
	
	
}
