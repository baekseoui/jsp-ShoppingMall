package com.human.dto;

public class CustomerCustomerDemoDto {
	
	//CUSTOMERCUSTOMERDEMO 테이블
	public String customerID;
	public String customerTypeID;
	
	public CustomerCustomerDemoDto(String customerID, String customerTypeID) {
		super();
		this.customerID = customerID;
		this.customerTypeID = customerTypeID;
	}
	
	public CustomerCustomerDemoDto() {}

	public String getCustomerID() {
		return customerID;
	}

	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}

	public String getCustomerTypeID() {
		return customerTypeID;
	}

	public void setCustomerTypeID(String customerTypeID) {
		this.customerTypeID = customerTypeID;
	}

	@Override
	public String toString() {
		return "CustomerCustomerDemoDto [customerID=" + customerID + ", customerTypeID=" + customerTypeID + "]";
	}
	

}
