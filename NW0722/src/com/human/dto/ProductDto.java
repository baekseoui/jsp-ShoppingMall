package com.human.dto;

public class ProductDto {
	private int productId;
	private String productName;
	private int supplierId;
	private int categoryId;
	private String quantityPerUnit;
	private double unitPrice;
	private int unitsInStock;
	private int unitsOnOrder;
	private int reorderLevel;
	private int discontinued;
	private String picture;
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getQuantityPerUnit() {
		return quantityPerUnit;
	}
	public void setQuantityPerUnit(String quantityPerUnit) {
		this.quantityPerUnit = quantityPerUnit;
	}
	public double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public int getUnitsInStock() {
		return unitsInStock;
	}
	public void setUnitsInStock(int unitsInStock) {
		this.unitsInStock = unitsInStock;
	}
	public int getUnitsOnOrder() {
		return unitsOnOrder;
	}
	public void setUnitsOnOrder(int unitsOnOrder) {
		this.unitsOnOrder = unitsOnOrder;
	}
	public int getReorderLevel() {
		return reorderLevel;
	}
	public void setReorderLevel(int reorderLevel) {
		this.reorderLevel = reorderLevel;
	}
	public int getDiscontinued() {
		return discontinued;
	}
	public void setDiscontinued(int discontinued) {
		this.discontinued = discontinued;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public ProductDto(int productId, String productName, int supplierId, int categoryId, String quantityPerUnit,
			double unitPrice, int unitsInStock, int unitsOnOrder, int reorderLevel, int discontinued, String picture) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.supplierId = supplierId;
		this.categoryId = categoryId;
		this.quantityPerUnit = quantityPerUnit;
		this.unitPrice = unitPrice;
		this.unitsInStock = unitsInStock;
		this.unitsOnOrder = unitsOnOrder;
		this.reorderLevel = reorderLevel;
		this.discontinued = discontinued;
		this.picture = picture;
	}
	public ProductDto() {}
	@Override
	public String toString() {
		return "ProductDto [productId=" + productId + ", productName=" + productName + ", supplierId=" + supplierId
				+ ", categoryId=" + categoryId + ", quantityPerUnit=" + quantityPerUnit + ", unitPrice=" + unitPrice
				+ ", unitsInStock=" + unitsInStock + ", unitsOnOrder=" + unitsOnOrder + ", reorderLevel=" + reorderLevel
				+ ", discontinued=" + discontinued + ", picture=" + picture + ", getProductId()=" + getProductId()
				+ ", getProductName()=" + getProductName() + ", getSupplierId()=" + getSupplierId()
				+ ", getCategoryId()=" + getCategoryId() + ", getQuantityPerUnit()=" + getQuantityPerUnit()
				+ ", getUnitPrice()=" + getUnitPrice() + ", getUnitsInStock()=" + getUnitsInStock()
				+ ", getUnitsOnOrder()=" + getUnitsOnOrder() + ", getReorderLevel()=" + getReorderLevel()
				+ ", getDiscontinued()=" + getDiscontinued() + ", getPicture()=" + getPicture() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
	
	
	
}