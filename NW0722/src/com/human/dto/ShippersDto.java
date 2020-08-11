package com.human.dto;

public class ShippersDto {

	// shippers 테이블
	private int shipperID;
	private String companyName;
	private String phone;

	public ShippersDto() {
	}

	public ShippersDto(int shipperID, String companyName, String phone) {
		super();
		this.shipperID = shipperID;
		this.companyName = companyName;
		this.phone = phone;
	}

	public int getShipperID() {
		return shipperID;
	}

	public void setShipperID(int shipperID) {
		this.shipperID = shipperID;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "ShippersDto [shipperID=" + shipperID + ", companyName=" + companyName + ", phone=" + phone + "]";
	}

	// shippersID -> 신규입력
	public String shipperIDSelect() {
		String result = String.format("\t%-2d %-44s %-28s", shipperID, companyName, phone);
		return result;
	}

	// shippers 일괄 조회
	public String shippersToString() {
		String result;
		result = String.format("\t%-5d, %-44s %-28s", shipperID, companyName, phone);
		return result;
	}

}
