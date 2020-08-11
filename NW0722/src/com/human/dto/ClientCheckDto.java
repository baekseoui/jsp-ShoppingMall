package com.human.dto;

public class ClientCheckDto {
	public ClientCheckDto() {}
	
	private String supplierId;
	private String companyName;
	private String phone;
	private String address;
	private String contactName;
	private String contactTitle;
	private String city; 
	private String region;
	private String postalCode;
	private String country;
	private String fax;
	private String homepage;
	
	
	
	public ClientCheckDto(String supplierId, String companyName, String phone, String address, String contactName,
			String contactTitle, String city, String region, String postalCode, String country, String fax,
			String homepage) {
		super();
		this.supplierId = supplierId;
		this.companyName = companyName;
		this.phone = phone;
		this.address = address;
		this.contactName = contactName;
		this.contactTitle = contactTitle;
		this.city = city;
		this.region = region;
		this.postalCode = postalCode;
		this.country = country;
		this.fax = fax;
		this.homepage = homepage;
	}
	
	public String getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContactName() {
		return contactName;
	}
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	public String getContactTitle() {
		return contactTitle;
	}
	public void setContactTitle(String contactTitle) {
		this.contactTitle = contactTitle;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	@Override
	public String toString() {
		return "ClientCheckDto [supplierId=" + supplierId + ", companyName=" + companyName + ", phone=" + phone
				+ ", address=" + address + ", contactName=" + contactName + ", contactTitle=" + contactTitle + ", city="
				+ city + ", region=" + region + ", postalCode=" + postalCode + ", country=" + country + ", fax=" + fax
				+ ", homepage=" + homepage + "]";
	}
	
	
	
}
