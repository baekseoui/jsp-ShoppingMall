package com.human.dto;

public class Select_orderDto {
		private int orderId;   //주문번호
		private String productName;  //제품명
		private int quantity;		//수량
		private double unitprice;	//단가
		private String picture;    //이미지
		private String productId;  //제품 아이디
		private double sum; //합
		
	
		
		
	

		@Override
		public String toString() {
			return "Select_orderDto [orderId=" + orderId + ", productName=" + productName + ", quantity=" + quantity
					+ ", unitprice=" + unitprice + ", picture=" + picture + ", productId=" + productId + ", sum=" + sum
					+ "]";
		}

		public String getProductId() {
			return productId;
		}

		public void setProductId(String productId) {
			this.productId = productId;
		}

		public double getSum() {
			return sum;
		}

		public void setSum(double sum) {
			this.sum = sum;
		}

	
		
		public String getPicture() {
			return picture;
		}

		public void setPicture(String picture) {
			this.picture = picture;
		}

		public int getOrderId() {
			return orderId;
		}
		public void setOrderId(int orderId) {
			this.orderId = orderId;
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
		public double getUnitprice() {
			return unitprice;
		}
		public void setUnitprice(double unitprice) {
			this.unitprice = unitprice;
		}

		
		
		
		
	
}
