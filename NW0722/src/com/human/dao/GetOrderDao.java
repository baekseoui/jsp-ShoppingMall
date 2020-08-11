package com.human.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.human.dto.CustomersDto;
import com.human.dto.OrderDetailsDto;
import com.human.dto.OrdersDto;
import com.human.dto.ProductsDto;
import com.human.util.DBConn;

public class GetOrderDao {

	public OrdersDto getOrder(String orderId, String customerId) {

		OrdersDto ordersDto = new OrdersDto();

		String sql = "select * from orders where orderid=%s and customerid='%s'";
		sql = String.format(sql, orderId, customerId);

		DBConn.getInstance();
		ResultSet rs = DBConn.statementQuery(sql);

		try {
			while (rs.next()) {
				ordersDto.setOrderID(rs.getInt("orderid"));
				ordersDto.setCustomerID(rs.getString("customerid"));
				ordersDto.setEmployeeID(rs.getInt("employeeid"));
				ordersDto.setTerritoryID(rs.getString("territoryid"));
				if (rs.getDate("orderdate") != null) {
					ordersDto.setOrderDate(DBConn.OdateToString(rs.getDate("orderdate")));
				}
				if (rs.getDate("requireddate") != null) {
					ordersDto.setRequiredDate(DBConn.OdateToString(rs.getDate("requireddate")));
				}
				if (rs.getDate("shippeddate") != null) {
					ordersDto.setShippedDate(DBConn.OdateToString(rs.getDate("shippeddate")));
				}
				ordersDto.setShipVia(rs.getInt("shipvia"));
				ordersDto.setFreight(rs.getDouble("freight"));
				ordersDto.setShipName(rs.getString("shipname"));
				ordersDto.setShipAddress(rs.getString("shipaddress"));
				ordersDto.setShipCity(rs.getString("shipcity"));
				ordersDto.setShipRegion(rs.getString("shipregion"));
				ordersDto.setShipPostalCode(rs.getString("shippostalcode"));
				ordersDto.setShipCountry(rs.getString("shipcountry"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ordersDto;
	}

	public CustomersDto getUser(String customerId) {

		CustomersDto dto = new CustomersDto();

		String sql = "select * from customers where customerid='%s'";
		sql = String.format(sql, customerId);

		DBConn.getInstance();
		ResultSet rs = DBConn.statementQuery(sql);

		try {
			while (rs.next()) {
				dto.setCustomerID(rs.getString("customerid"));
				dto.setCompanyName(rs.getString("companyname"));
				dto.setContactName(rs.getString("contactname"));
				dto.setContactTitle(rs.getString("contacttitle"));
				dto.setAddress(rs.getString("address"));
				dto.setCity(rs.getString("city"));
				dto.setRegion(rs.getString("region"));
				dto.setPostalCode(rs.getString("postalcode"));
				dto.setCountry(rs.getString("country"));
				dto.setPhone(rs.getString("phone"));
				dto.setFax(rs.getString("fax"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return dto;
	}

	public ArrayList<OrderDetailsDto> getOrderDetail(String orderId) {
		ArrayList<OrderDetailsDto> dtos = new ArrayList<OrderDetailsDto>();

		String sql = "select * from orderdetails where orderid=%s";
		sql = String.format(sql, orderId);

		DBConn.getInstance();
		ResultSet rs = DBConn.statementQuery(sql);

		try {
			while (rs.next()) {
				OrderDetailsDto dto = new OrderDetailsDto();
				dto.setOrderID(rs.getInt("orderid"));
				dto.setProductID(rs.getInt("productid"));
				dto.setUnitPrice(rs.getDouble("unitprice"));
				dto.setQuantity(rs.getInt("quantity"));
				dto.setDiscount(rs.getDouble("discount"));
				dtos.add(dto);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return dtos;
	}

	public ProductsDto getProduct(int productID) {

		ProductsDto dto = new ProductsDto();

		String sql = "select * from products where productid=%d";
		sql = String.format(sql, productID);

		DBConn.getInstance();
		ResultSet rs = DBConn.statementQuery(sql);

		try {
			while (rs.next()) {
				dto.setProductID(rs.getInt("productid"));
				dto.setProductName(rs.getString("productname"));
				dto.setSupplierID(rs.getInt("supplierid"));
				dto.setCategoryID(rs.getInt("categoryid"));
				dto.setQuantityPerUnit(rs.getString("quantityperunit"));
				dto.setUnitPrice(rs.getInt("unitprice"));
				dto.setUnitsInStock(rs.getInt("unitsinstock"));
				dto.setUnitsOnOrder(rs.getInt("unitsonorder"));
				dto.setReorderLevel(rs.getInt("reorderlevel"));
				dto.setDiscontinued(rs.getInt("discontinued"));
				dto.setPicture(rs.getString("picture"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return dto;
	}

	public ArrayList<OrderDetailsDto> select(String orderId, String page) {

		ArrayList<OrderDetailsDto> dtos = new ArrayList<>();

		Connection con = DBConn.getInstance();

		String sql = "select * from " + "(select rownum m,sub.* from "
				+ "(select * from orderdetails where orderid=%s) sub " + "where rownum <=%s*5) "
				+ "where m>=(%s-1)*5+1 ";
		sql = String.format(sql, orderId, page, page);

		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				OrderDetailsDto dto = new OrderDetailsDto();
				dto.setOrderID(rs.getInt("orderid"));
				dto.setProductID(rs.getInt("productid"));
				dto.setUnitPrice(rs.getDouble("unitprice"));
				dto.setQuantity(rs.getInt("quantity"));
				dto.setDiscount(rs.getDouble("discount"));
				dtos.add(dto);
			}
			DBConn.dbClose();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtos;
	}

	public int dataCount(String orderID) {

		int returnValue = 0;

		DBConn.getInstance();
		String sql = "select count(*) cnt from orderdetails where orderid=%s";
		sql = String.format(sql, orderID);

		try {
			ResultSet rs = DBConn.statementQuery(sql);
			while (rs.next()) {
				returnValue = rs.getInt("cnt");
			}
			DBConn.dbClose();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return returnValue;
	}

	public String getOrderId(String customerId) {

		String orderId = "";

		DBConn.getInstance();
		String sql = "select max(orderid) a from orders where customerid='%s' and orderdate is not null and requireddate is null";
		sql = String.format(sql, customerId);

		ResultSet rs = DBConn.statementQuery(sql);
		try {
			while (rs.next()) {
				orderId = rs.getString("a");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return orderId;
	}

	public int cancelOrder(String orderId) {
		
		int resultValue=0;
		
		DBConn.getInstance();
		String sql = "update orders set "
				+ "EmployeeID = null, OrderDate = null, RequiredDate = null, ShippedDate = null, ShipVia = null, Freight = null, "
				+ "ShipName = null, ShipAddress = null, ShipCity = null, ShipRegion = null, ShipPostalCode = null, ShipCountry = null "
				+ "where orderID = %s";
		sql=String.format(sql, orderId);
		
		resultValue=DBConn.statementUpdate(sql);
		return resultValue;
	}

}
