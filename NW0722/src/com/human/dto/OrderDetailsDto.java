package com.human.dto;

public class OrderDetailsDto {
	
	private int orderID;
	private int productID;
	private double unitPrice;
	private int quantity;
	private double discount;

	public OrderDetailsDto() {} // 생성자 추가
	
	public OrderDetailsDto(int orderID, int productID, double unitPrice, int quantity, double discount) {
		super();
		this.orderID = orderID;
		this.productID = productID;
		this.unitPrice = unitPrice;
		this.quantity = quantity;
		this.discount = discount;
	}

	// toString,getter,setter 추가
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

	public double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}
	
	@Override
	public String toString() {
		return "OrderDetailsDto [orderId=" + orderID + ", productId=" + productID + ", unitPrice=" + unitPrice
				+ ", quantity=" + quantity + ", discount=" + discount + "]";
	}
}
