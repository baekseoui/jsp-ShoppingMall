package com.human.dto;

import java.util.Date;

public class OrderDto {
	private int orderid;
	private int productid;
	private double unitprice;
	private int quantity;
	private double discount;
	private String customerid;
	private int employeeid;
	private Date orderdate;
	private Date requireddate;
	private Date shippeddate;
	private int shipvia;
	private int freight;
	private String shipname;
	private String shipaddress;
	private String shipcity;
	private String shipregion;
	private String shippostalcode;
	private String shipcountry;
	String productname;
	int supplierid;
	int categoryid;
	String quantityperunit;
	int unitsinstock;
	int unitsonorder;
	int reorderlevel;
	int discontinued;
	
	public OrderDto() {}

	public OrderDto(int orderid, String customerid, Date orderdate, Date shippeddate, 
			String productname,
			double unitprice, int quantity, double discount
			) {
		this.orderid = orderid;
		this.unitprice = unitprice;
		this.quantity = quantity;
		this.discount = discount;
		this.customerid = customerid;
		this.orderdate = orderdate;
		this.shippeddate = shippeddate;
		this.productname = productname;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public double getUnitprice() {
		return unitprice;
	}

	public void setUnitprice(double unitprice) {
		this.unitprice = unitprice;
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

	public String getCustomerid() {
		return customerid;
	}

	public void setCustomerid(String customerid) {
		this.customerid = customerid;
	}

	public int getEmployeeid() {
		return employeeid;
	}

	public void setEmployeeid(int employeeid) {
		this.employeeid = employeeid;
	}

	public Date getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}

	public Date getRequireddate() {
		return requireddate;
	}

	public void setRequireddate(Date requireddate) {
		this.requireddate = requireddate;
	}

	public Date getShippeddate() {
		return shippeddate;
	}

	public void setShippeddate(Date shippeddate) {
		this.shippeddate = shippeddate;
	}

	public int getShipvia() {
		return shipvia;
	}

	public void setShipvia(int shipvia) {
		this.shipvia = shipvia;
	}

	public int getFreight() {
		return freight;
	}

	public void setFreight(int freight) {
		this.freight = freight;
	}

	public String getShipname() {
		return shipname;
	}

	public void setShipname(String shipname) {
		this.shipname = shipname;
	}

	public String getShipaddress() {
		return shipaddress;
	}

	public void setShipaddress(String shipaddress) {
		this.shipaddress = shipaddress;
	}

	public String getShipcity() {
		return shipcity;
	}

	public void setShipcity(String shipcity) {
		this.shipcity = shipcity;
	}

	public String getShipregion() {
		return shipregion;
	}

	public void setShipregion(String shipregion) {
		this.shipregion = shipregion;
	}

	public String getShippostalcode() {
		return shippostalcode;
	}

	public void setShippostalcode(String shippostalcode) {
		this.shippostalcode = shippostalcode;
	}

	public String getShipcountry() {
		return shipcountry;
	}

	public void setShipcountry(String shipcountry) {
		this.shipcountry = shipcountry;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getSupplierid() {
		return supplierid;
	}

	public void setSupplierid(int supplierid) {
		this.supplierid = supplierid;
	}

	public int getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}

	public String getQuantityperunit() {
		return quantityperunit;
	}

	public void setQuantityperunit(String quantityperunit) {
		this.quantityperunit = quantityperunit;
	}

	public int getUnitsinstock() {
		return unitsinstock;
	}

	public void setUnitsinstock(int unitsinstock) {
		this.unitsinstock = unitsinstock;
	}

	public int getUnitsonorder() {
		return unitsonorder;
	}

	public void setUnitsonorder(int unitsonorder) {
		this.unitsonorder = unitsonorder;
	}

	public int getReorderlevel() {
		return reorderlevel;
	}

	public void setReorderlevel(int reorderlevel) {
		this.reorderlevel = reorderlevel;
	}

	public int getDiscontinued() {
		return discontinued;
	}

	public void setDiscontinued(int discontinued) {
		this.discontinued = discontinued;
	}
	
	
}
