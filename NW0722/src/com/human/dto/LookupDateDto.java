package com.human.dto;

//import java.sql.Timestamp;
import java.util.Date;


public class LookupDateDto {
	private int orderID;
	private String customerID;
	private Date applicationDate;
	private Date finishDate;
	private String  type;
	public String getCustomerID() {
		return customerID;
	}
	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}
	public Date getApplicationDate() {
		return applicationDate;
	}
	public void setApplicationDate(Date applicationDate) {
		this.applicationDate = applicationDate;
	}
	public Date getFinishDate() {
		return finishDate;
	}
	public void setFinishDate(Date finishDate) {
		this.finishDate = finishDate;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getOrderID() {
		return orderID;
	}
	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}
	
	@Override
	public String toString() {
		return "LookupDateDto [orderID=" + orderID + ", customerID=" + customerID + ", applicationDate="
				+ applicationDate + ", finishDate=" + finishDate + ", type=" + type + "]";
	}
	public LookupDateDto(String customerID,int orderID, Date applicationDate, Date finishDate, String type) {
		super();
		this.orderID=orderID;
		this.customerID = customerID;
		this.applicationDate = applicationDate;
		this.finishDate = finishDate;
		this.type = type;
	}
	public LookupDateDto() {}
}
