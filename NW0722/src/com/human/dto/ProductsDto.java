package com.human.dto;

public class ProductsDto {
	public int productID;
	String productName;
	int supplierId;
	int categoryId;
	String quantityPerUnit;
	double unitPrice;
	int unitsInStock;
	int unitsOnOrder;
	int reorderLevel;
	int discontinued;
	String picture;
	
	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public ProductsDto() {}

	public ProductsDto(int productID, String productName, int supplierId, int categoryId, String quantityPerUnit,
			double unitPrice, int unitsInStock, int unitsOnOrder, int reorderLevel, int discontinued) {
		super();
		this.productID = productID;
		this.productName = productName;
		this.supplierId = supplierId;
		this.categoryId = categoryId;
		this.quantityPerUnit = quantityPerUnit;
		this.unitPrice = unitPrice;
		this.unitsInStock = unitsInStock;
		this.unitsOnOrder = unitsOnOrder;
		this.reorderLevel = reorderLevel;
		this.discontinued = discontinued;
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

	public int getSupplierID() {
		return supplierId;
	}

	public void setSupplierID(int supplierId) {
		this.supplierId = supplierId;
	}

	public int getCategoryID() {
		return categoryId;
	}

	public void setCategoryID(int categoryId) {
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

	public void setUnitPrice(int unitPrice) {
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

	@Override
	public String toString() {
		return "ProductsDto [productID=" + productID + ", productName=" + productName + ", supplierId=" + supplierId
				+ ", categoryId=" + categoryId + ", quantityPerUnit=" + quantityPerUnit + ", unitPrice=" + unitPrice
				+ ", unitsInStock=" + unitsInStock + ", unitsOnOrder=" + unitsOnOrder + ", reorderLevel=" + reorderLevel
				+ ", discontinued=" + discontinued + "]";
	}
	
	
}
