package com.human.dto;

import java.sql.Timestamp;

public class CartVO {
	private int cartId;			//카트id
	private String userId; 		//고객id
	private int productId; 		//상품id
	//private String userName; 	//고객이름
	private String productName; //상품이름
	private int quantity; 		//상품수량
	private double price2; 		//상품가격
	private Timestamp indate;
	private String picture; 	//이미지
	
	public CartVO() {};
	
	public CartVO(String userId, int productId, String productName, int quantity,
			double price2, String picture) {
		this.userId = userId;
		this.productId = productId;
		this.productName = productName;
		this.quantity = quantity;
		this.price2 = price2;
		this.picture = picture;
	}
	
	public CartVO(int cartId, String userId, int productId, String productName, int quantity,
			double price2, Timestamp indate, String picture) {
		this.cartId = cartId;
		this.userId = userId;
		this.productId = productId;
		this.productName = productName;
		this.quantity = quantity;
		this.price2 = price2;
		this.indate = indate;
		this.picture = picture;
	}
	


	@Override
	public String toString() {
		return "CartVO [cartId=" + cartId + ", userId=" + userId + ", productId=" + productId + ", productName="
				+ productName + ", quantity=" + quantity + ", price2=" + price2 + ", indate=" + indate + ", picture="
				+ picture + "]";
	}

	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
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
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getPrice2() {
		return price2;
	}
	public void setPrice2(double price2) {
		this.price2 = price2;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	
	
}