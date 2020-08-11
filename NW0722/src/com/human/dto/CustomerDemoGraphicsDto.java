package com.human.dto;

public class CustomerDemoGraphicsDto {
	
	//CUSTOMERDEMOGRAPHICS 테이블
	public double customerDesc; 
	public String customerTypeId;
	
	public CustomerDemoGraphicsDto(double customerDesc, String customerTypeId) {
		super();
		this.customerDesc = customerDesc;
		this.customerTypeId = customerTypeId;
	}
	
	public CustomerDemoGraphicsDto() {}

	public double getCustomerDesc() {
		return customerDesc;
	}

	public void setCustomerDesc(double customerDesc) {
		this.customerDesc = customerDesc;
	}

	public String getCustomerTypeId() {
		return customerTypeId;
	}

	public void setCustomerTypeId(String customerTypeId) {
		this.customerTypeId = customerTypeId;
	}

	@Override
	public String toString() {
		return "CustomerDemoGraphicsDto [customerDesc=" + customerDesc + ", customerTypeId=" + customerTypeId + "]";
	}
	

}
