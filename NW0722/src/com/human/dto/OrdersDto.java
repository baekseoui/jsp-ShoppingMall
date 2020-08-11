package com.human.dto;

import java.util.Date;

public class OrdersDto {
	private int orderID;
	private String customerID;
	private int employeeID;
	private String territoryID;
	private String orderDate;
	private String requiredDate;
	private String shippedDate;
	private int shipVia;
	private Double freight;
	private String shipName;
	private String shipAddress;
	private String shipCity;
	private String shipRegion;
	private String shipPostalCode;
	private String shipCountry;

	public int getOrderID() {
		return orderID;
	}

	public int getShipVia() {
		return shipVia;
	}

	public void setShipVia(int shipVia) {
		this.shipVia = shipVia;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}

	public String getCustomerID() {
		return customerID;
	}

	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}

	public int getEmployeeID() {
		return employeeID;
	}

	public void setEmployeeID(int employeeID) {
		this.employeeID = employeeID;
	}

	public String getTerritoryID() {
		return territoryID;
	}

	public void setTerritoryID(String territoryID) {
		this.territoryID = territoryID;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getRequiredDate() {
		return requiredDate;
	}

	public void setRequiredDate(String requiredDate) {
		this.requiredDate = requiredDate;
	}

	public String getShippedDate() {
		return shippedDate;
	}

	public void setShippedDate(String shippedDate) {
		this.shippedDate = shippedDate;
	}

	public Double getFreight() {
		return freight;
	}

	public void setFreight(Double freight) {
		this.freight = freight;
	}

	public String getShipName() {
		return shipName;
	}

	public void setShipName(String shipName) {
		this.shipName = shipName;
	}

	public String getShipAddress() {
		return shipAddress;
	}

	public void setShipAddress(String shipAddress) {
		this.shipAddress = shipAddress;
	}

	public String getShipCity() {
		return shipCity;
	}

	public void setShipCity(String shipCity) {
		this.shipCity = shipCity;
	}

	public String getShipRegion() {
		return shipRegion;
	}

	public void setShipRegion(String shipRegion) {
		this.shipRegion = shipRegion;
	}

	public String getShipPostalCode() {
		return shipPostalCode;
	}

	public void setShipPostalCode(String shipPostalCode) {
		this.shipPostalCode = shipPostalCode;
	}

	public String getShipCountry() {
		return shipCountry;
	}

	public void setShipCountry(String shipCountry) {
		this.shipCountry = shipCountry;
	}

	@Override
	public String toString() {
		return "OrdersDto [orderID=" + orderID + ", customerID=" + customerID + ", employeeID=" + employeeID
				+ ", territoryID=" + territoryID + ", orderDate=" + orderDate + ", requiredDate=" + requiredDate
				+ ", shippedDate=" + shippedDate + ", shipVia=" + shipVia + ", freight=" + freight + ", shipName="
				+ shipName + ", shipAddress=" + shipAddress + ", shipCity=" + shipCity + ", shipRegion=" + shipRegion
				+ ", shipPostalCode=" + shipPostalCode + ", shipCountry=" + shipCountry + "]";
	}

}
