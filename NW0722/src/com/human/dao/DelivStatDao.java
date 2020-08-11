package com.human.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.human.dto.BoardDto;
import com.human.dto.OrderDetailsDto;
import com.human.dto.OrdersDto;
import com.human.dto.ProductsDto;
import com.human.util.DBConn;

public class DelivStatDao {

//	public ArrayList<OrderDetailsDto> delivStatselect(String tableName, String colName, ArrayList<Integer> oidList,
//			int stat) {
//		ArrayList<OrderDetailsDto> dtos = new ArrayList<OrderDetailsDto>();
//		DBConn.getInstance();
//		String sql = "select * from ";
//		sql += tableName;
//		sql += " where ";
//		sql += colName;
//		sql += "=";
//		for (int i = 0; i < oidList.size(); i++) {// size=10..9까지돌아
//			sql += oidList.get(i); // sql = sql + oidList.get(i) sql += "'";
//			if (i < oidList.size() - 1) {//
//				sql += " or ";
//				sql += colName;
//				sql += "=";
//			}
//		}
//
//		// System.out.println("sql : " + sql);
//
//		int count = 0;
//		ArrayList<ArrayList<Integer>> tempList = statByIDs(oidList);
//		ResultSet rs = DBConn.statementQuery(sql);
//		try {
//			while (rs.next()) {
//
//				OrderDetailsDto dto = new OrderDetailsDto();
//				dto.setOrderID(rs.getInt("orderId"));
//				dto.setProductID(rs.getInt("productId"));
//				dto.setUnitPrice(rs.getDouble("unitprice"));
//				dto.setQuantity(rs.getInt("quantity"));
//				dto.setDiscount(rs.getDouble("discount"));
//
//				if (tempList.get(count).get(0) == dto.getOrderID()) {
//					if (tempList.get(count).get(2) == stat) {
//						dtos.add(dto);
//					}
//				}
//				count++;
//			}
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return dtos;
//	}
//
//	public ArrayList<OrdersDto> ordersOrderdetailsJoin(ArrayList<Integer> oidList, int stat) {
//		ArrayList<OrdersDto> dtos = new ArrayList<OrdersDto>();
//		DBConn.getInstance();
//		String sql = "select * from orders join orderdetails " + " on orders.orderid = orderdetails.orderid "
//				+ " where orders.orderid=";
//
//		for (int i = 0; i < oidList.size(); i++) {// size=10..9까지돌아
//			sql += oidList.get(i); // sql = sql + oidList.get(i) sql += "'";
//			if (i < oidList.size() - 1) {//
//				sql += " or orders.orderid=";
//			}
//		}
//
//		System.out.println("orders # Order # detailsJoinsql : " + sql);
//
//		int count = 0;
//		ArrayList<ArrayList<Integer>> tempList = statByIDs(oidList);
//		ResultSet rs = DBConn.statementQuery(sql);
//		try {
//			while (rs.next()) {
//
//				OrdersDto dto = new OrdersDto();
//				dto.setOrderID(rs.getInt("orderID"));
//				dto.setCustomerID(rs.getString("customerID"));
//				dto.setEmployeeID(rs.getInt("employeeID"));
//				dto.setTerritoryID(rs.getString("territoryID"));
//				dto.setOrderDate(rs.getString("orderdate"));
//				dto.setRequiredDate(rs.getString("requireddate"));
//				dto.setShippedDate(rs.getString("shippeddate"));
//				dto.setShipVia(rs.getInt("shipVia"));
//				dto.setFreight(rs.getDouble("freight"));
//				dto.setShipName(rs.getString("shipname"));
//				dto.setShipAddress(rs.getString("shipaddress"));
//				dto.setShipCity(rs.getString("shipcity"));
//				dto.setShipRegion(rs.getString("shipregion"));
//				dto.setShipPostalCode(rs.getString("shippostalcode"));
//				dto.setShipCountry(rs.getString("shipcountry"));
//
//				if (tempList.get(count).get(0) == dto.getOrderID()) {
//					if (tempList.get(count).get(2) == stat) {
//						dtos.add(dto);
//					}
//				}
//				count++;
//
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return dtos;
//	}
//
//	public ArrayList<ProductsDto> productsOrderdetailsJoin(ArrayList<Integer> oidList, int stat) {
//		ArrayList<ProductsDto> dtos = new ArrayList<ProductsDto>();
//		DBConn.getInstance();
//
//		String sql = "select * from products join orderdetails " + " on products.ProductID = orderdetails.ProductID "
//				+ " where orderdetails.orderid=";
//
//		for (int i = 0; i < oidList.size(); i++) {// size=10..9까지돌아
//			sql += oidList.get(i); // sql = sql + oidList.get(i) sql += "'";
//			if (i < oidList.size() - 1) {//
//				sql += " or orderdetails.orderid=";
//			}
//		}
//
//		System.out.println("products # Orderdetails # Join sql : " + sql);
//
////		int count = 0;
//		ArrayList<ArrayList<Integer>> tempList = statByIDs(oidList);
//		ResultSet rs = DBConn.statementQuery(sql);
//		try {
//			while (rs.next()) {
//
//				ProductsDto dto = new ProductsDto();
//				dto.setProductID(rs.getInt("productid"));
//				dto.setProductName(rs.getString("PRODUCTName"));
//				dto.setSupplierID(rs.getInt("SUPPLIERID"));
//				dto.setCategoryID(rs.getInt("CATEGORYID"));
//				dto.setQuantityPerUnit(rs.getString("QUANTITYPERUNIT"));
//				dto.setUnitPrice(rs.getInt("UNITPRICE"));
//				dto.setUnitsInStock(rs.getInt("UNITSINSTOCK"));
//				dto.setUnitsOnOrder(rs.getInt("UNITSONORDER"));
//				dto.setReorderLevel(rs.getInt("REORDERLEVEL"));
//				dto.setDiscontinued(rs.getInt("DISCONTINUED"));
//				dto.setPicture(rs.getString("Picture"));
//
////				System.out.println(tempList.get(count).get(1));
////				System.out.println(dto.getProductID());
//				for (int i = 0; i < tempList.size(); i++) {
//					if (tempList.get(i).get(1) == dto.getProductID()) {
//						if (tempList.get(i).get(2) == stat) {
//							dtos.add(dto);
//							System.out.println(dto);
//						}
//					}
//				}
////				count++;
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return dtos;
//	}

	public ArrayList ordersOrderdetailsProductsJoin(ArrayList<Integer> oidList, String tableName, int state) {
		ArrayList oDtos = new ArrayList<OrdersDto>();
		ArrayList dDtos = new ArrayList<OrderDetailsDto>();
		ArrayList pDtos = new ArrayList<ProductsDto>();
		DBConn.getInstance();

		String sql = "select " + "orders.orderid, orders.customerid, orders.employeeid, orders.territoryid, "
				+ "orders.orderdate, orders.requireddate, orders.shippeddate, orders.shipvia, "
				+ "orders.freight, orders.shipname, orders.shipaddress, "
				+ "orders.shipcity, orders.shipregion, orders.shippostalcode, orders.shipcountry, " +

				"orderdetails.unitprice, orderdetails.quantity, orderdetails.discount, " +

				"products.productid, products.productname, products.supplierid, "
				+ "products.categoryid, products.quantityperunit, products.unitprice, products.unitsinstock, "
				+ "products.unitsonorder, products.reorderlevel, products.discontinued, products.picture " +

				"from orders, orderdetails, products " + "where orders.orderid = orderdetails.orderid "
				+ "and orderdetails.productid = products.productid " + "and (orders.orderid= ";

		for (int i = 0; i < oidList.size(); i++) {// size=10..9까지돌아
			sql += oidList.get(i); // sql = sql + oidList.get(i) sql += "'";
			if (i < oidList.size() - 1) {//
				sql += " or orderdetails.orderid=";
			}
		}
		sql += ") order by orders.orderdate desc";

		System.out.println("orders # Orderdetails # products Join sql : \n" + sql);

//		int count = 0;
//		ArrayList<ArrayList<Integer>> tempList = statByIDs(oidList);
		ResultSet rs = DBConn.statementQuery(sql);
		try {
			while (rs.next()) {
				OrdersDto oDto = new OrdersDto();
				OrderDetailsDto dDto = new OrderDetailsDto();
				ProductsDto pDto = new ProductsDto();

				oDto.setOrderID(rs.getInt("orderID"));
				oDto.setCustomerID(rs.getString("customerID"));
				oDto.setEmployeeID(rs.getInt("employeeID"));
				oDto.setTerritoryID(rs.getString("territoryID"));
				oDto.setOrderDate(rs.getString("orderdate"));
				oDto.setRequiredDate(rs.getString("requireddate"));
				oDto.setShippedDate(rs.getString("shippeddate"));
				oDto.setShipVia(rs.getInt("shipVia"));
				oDto.setFreight(rs.getDouble("freight"));
				oDto.setShipName(rs.getString("shipname"));
				oDto.setShipAddress(rs.getString("shipaddress"));
				oDto.setShipCity(rs.getString("shipcity"));
				oDto.setShipRegion(rs.getString("shipregion"));
				oDto.setShipPostalCode(rs.getString("shippostalcode"));
				oDto.setShipCountry(rs.getString("shipcountry"));

				dDto.setOrderID(rs.getInt("orderID"));
				dDto.setProductID(rs.getInt("productid"));
				dDto.setUnitPrice(rs.getDouble("unitprice"));
				dDto.setQuantity(rs.getInt("quantity"));
				dDto.setDiscount(rs.getDouble("discount"));

				pDto.setProductID(rs.getInt("productid"));
				pDto.setProductName(rs.getString("PRODUCTName"));
				pDto.setSupplierID(rs.getInt("SUPPLIERID"));
				pDto.setCategoryID(rs.getInt("CATEGORYID"));
				pDto.setQuantityPerUnit(rs.getString("QUANTITYPERUNIT"));
				pDto.setUnitPrice(rs.getInt("UNITPRICE"));
				pDto.setUnitsInStock(rs.getInt("UNITSINSTOCK"));
				pDto.setUnitsOnOrder(rs.getInt("UNITSONORDER"));
				pDto.setReorderLevel(rs.getInt("REORDERLEVEL"));
				pDto.setDiscontinued(rs.getInt("DISCONTINUED"));
				pDto.setPicture(rs.getString("Picture"));

				int delivState = -1;
				if (rs.getString("requiredDate") != null) { // 배송이 완료되었다면 = 배송완료
					delivState = 2;
				} else {// 배송이 완료되지 않았다면
					if (rs.getString("shippedDate") != null) { // 배송이 시작됐다면 = 배송중
						delivState = 1;
					} else {// 배송이 시작되지않았다면 = 준비중
						delivState = 0;
					}
				}

				if (state == 3) {// 모든 배송 조회
					if (!(oDto.getOrderDate() == null && oDto.getShippedDate() == null
							&& oDto.getRequiredDate() == null)) {
						oDtos.add(oDto);
						pDtos.add(pDto);
						dDtos.add(dDto);
					}
				} else {// 특정 배송 조회
					if (delivState == state) {
//						System.out.println(oDto);
//						System.out.println(pDto);
//						System.out.println(dDto);
						oDtos.add(oDto);
						pDtos.add(pDto);
						dDtos.add(dDto);
//						System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ delivery state is  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
					}
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

//		System.out.println(oDtos);
//		System.out.println(pDtos);
//		System.out.println(dDtos);
		ArrayList returnVal = null;
		if (tableName.equals("orders")) {
			returnVal = oDtos;
		} else if (tableName.equals("products")) {
			returnVal = pDtos;
		} else if (tableName.equals("orderDetails")) {
			returnVal = dDtos;
		}
//		System.out.println(returnVal);
		return returnVal;
	}

	public ArrayList ordersOrderdetailsProductsJoin(ArrayList<Integer> oidList, String tableName, int state,
			String period) {
		ArrayList oDtos = new ArrayList<OrdersDto>();
		ArrayList dDtos = new ArrayList<OrderDetailsDto>();
		ArrayList pDtos = new ArrayList<ProductsDto>();
		DBConn.getInstance();

		String sql = "select " + "orders.orderid, orders.customerid, orders.employeeid, orders.territoryid, "
				+ "orders.orderdate, orders.requireddate, orders.shippeddate, orders.shipvia, "
				+ "orders.freight, orders.shipname, orders.shipaddress, "
				+ "orders.shipcity, orders.shipregion, orders.shippostalcode, orders.shipcountry, " +

				"orderdetails.unitprice, orderdetails.quantity, orderdetails.discount, " +

				"products.productid, products.productname, products.supplierid, "
				+ "products.categoryid, products.quantityperunit, products.unitprice, products.unitsinstock, "
				+ "products.unitsonorder, products.reorderlevel, products.discontinued, products.picture " +

				"from orders, orderdetails, products " + "where orders.orderid = orderdetails.orderid "
				+ "and orderdetails.productid = products.productid " + "and (orders.orderid= ";

		for (int i = 0; i < oidList.size(); i++) {// size=10..9까지돌아
			sql += oidList.get(i); // sql = sql + oidList.get(i) sql += "'";
			if (i < oidList.size() - 1) {//
				sql += " or orderdetails.orderid=";
			}
		}
		sql += ") and orders.orderdate > (select ADD_MONTHS(SYSDATE,-";
		sql += period;
		sql += ") from dual) order by orders.orderdate desc";
		System.out.println("orders # Orderdetails # products Join sql : \n" + sql);

		ResultSet rs = DBConn.statementQuery(sql);
		try {
			while (rs.next()) {
				OrdersDto oDto = new OrdersDto();
				OrderDetailsDto dDto = new OrderDetailsDto();
				ProductsDto pDto = new ProductsDto();

				oDto.setOrderID(rs.getInt("orderID"));
				oDto.setCustomerID(rs.getString("customerID"));
				oDto.setEmployeeID(rs.getInt("employeeID"));
				oDto.setTerritoryID(rs.getString("territoryID"));
				oDto.setOrderDate(rs.getString("orderdate"));
				oDto.setRequiredDate(rs.getString("requireddate"));
				oDto.setShippedDate(rs.getString("shippeddate"));
				oDto.setShipVia(rs.getInt("shipVia"));
				oDto.setFreight(rs.getDouble("freight"));
				oDto.setShipName(rs.getString("shipname"));
				oDto.setShipAddress(rs.getString("shipaddress"));
				oDto.setShipCity(rs.getString("shipcity"));
				oDto.setShipRegion(rs.getString("shipregion"));
				oDto.setShipPostalCode(rs.getString("shippostalcode"));
				oDto.setShipCountry(rs.getString("shipcountry"));

				dDto.setOrderID(rs.getInt("orderID"));
				dDto.setProductID(rs.getInt("productid"));
				dDto.setUnitPrice(rs.getDouble("unitprice"));
				dDto.setQuantity(rs.getInt("quantity"));
				dDto.setDiscount(rs.getDouble("discount"));

				pDto.setProductID(rs.getInt("productid"));
				pDto.setProductName(rs.getString("PRODUCTName"));
				pDto.setSupplierID(rs.getInt("SUPPLIERID"));
				pDto.setCategoryID(rs.getInt("CATEGORYID"));
				pDto.setQuantityPerUnit(rs.getString("QUANTITYPERUNIT"));
				pDto.setUnitPrice(rs.getInt("UNITPRICE"));
				pDto.setUnitsInStock(rs.getInt("UNITSINSTOCK"));
				pDto.setUnitsOnOrder(rs.getInt("UNITSONORDER"));
				pDto.setReorderLevel(rs.getInt("REORDERLEVEL"));
				pDto.setDiscontinued(rs.getInt("DISCONTINUED"));
				pDto.setPicture(rs.getString("Picture"));

				int delivState = -1;
				if (rs.getString("requiredDate") != null) { // 배송이 완료되었다면 = 배송완료
					delivState = 2;
				} else {// 배송이 완료되지 않았다면
					if (rs.getString("shippedDate") != null) { // 배송이 시작됐다면 = 배송중
						delivState = 1;
					} else {// 배송이 시작되지않았다면 = 준비중
						delivState = 0;
					}
				}

				if (state == 3) {// 모든 배송 조회
					if (!(oDto.getOrderDate() == null && oDto.getShippedDate() == null
							&& oDto.getRequiredDate() == null)) {
						oDtos.add(oDto);
						pDtos.add(pDto);
						dDtos.add(dDto);
					}
				} else {// 특정 배송 조회
					if (delivState == state) {
//						System.out.println(oDto);
//						System.out.println(pDto);
//						System.out.println(dDto);
						oDtos.add(oDto);
						pDtos.add(pDto);
						dDtos.add(dDto);
//						System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ delivery state is  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
					}
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

//			System.out.println(oDtos);
//			System.out.println(pDtos);
//			System.out.println(dDtos);
		ArrayList returnVal = null;
		if (tableName.equals("orders")) {
			returnVal = oDtos;
		} else if (tableName.equals("products")) {
			returnVal = pDtos;
		} else if (tableName.equals("orderDetails")) {
			returnVal = dDtos;
		}
//			System.out.println(returnVal);
		return returnVal;
	}

//######################################################전체기간####################################################################
	public ArrayList ordersOrderdetailsProductsJoin_0(ArrayList<Integer> oidList, String tableName) {
		ArrayList oDtos = new ArrayList<OrdersDto>();
		ArrayList dDtos = new ArrayList<OrderDetailsDto>();
		ArrayList pDtos = new ArrayList<ProductsDto>();
		DBConn.getInstance();

		String sql = "select " + "orders.orderid, orders.customerid, orders.employeeid, orders.territoryid, "
				+ "orders.orderdate, orders.requireddate, orders.shippeddate, orders.shipvia, "
				+ "orders.freight, orders.shipname, orders.shipaddress, "
				+ "orders.shipcity, orders.shipregion, orders.shippostalcode, orders.shipcountry, " +

				"orderdetails.unitprice, orderdetails.quantity, orderdetails.discount, " +

				"products.productid, products.productname, products.supplierid, "
				+ "products.categoryid, products.quantityperunit, products.unitprice, products.unitsinstock, "
				+ "products.unitsonorder, products.reorderlevel, products.discontinued, products.picture " +

				"from orders, orderdetails, products " + "where orders.orderid = orderdetails.orderid "
				+ "and orderdetails.productid = products.productid " + "and (orders.orderid= ";

		for (int i = 0; i < oidList.size(); i++) {// size=10..9까지돌아
			sql += oidList.get(i); // sql = sql + oidList.get(i) sql += "'";
			if (i < oidList.size() - 1) {//
				sql += " or orderdetails.orderid=";
			}
		}
		sql += ") order by orders.orderdate desc";
		System.out.println("orders # Orderdetails # products Join sql : \n" + sql);

		ResultSet rs = DBConn.statementQuery(sql);
		try {
			while (rs.next()) {
				OrdersDto oDto = new OrdersDto();
				OrderDetailsDto dDto = new OrderDetailsDto();
				ProductsDto pDto = new ProductsDto();

				oDto.setOrderID(rs.getInt("orderID"));
				oDto.setCustomerID(rs.getString("customerID"));
				oDto.setEmployeeID(rs.getInt("employeeID"));
				oDto.setTerritoryID(rs.getString("territoryID"));
				oDto.setOrderDate(makeCorrectDate(rs.getString("orderdate")));
				oDto.setRequiredDate(rs.getString("requireddate"));
				oDto.setShippedDate(rs.getString("shippeddate"));
				oDto.setShipVia(rs.getInt("shipVia"));
				oDto.setFreight(rs.getDouble("freight"));
				oDto.setShipName(rs.getString("shipname"));
				oDto.setShipAddress(rs.getString("shipaddress"));
				oDto.setShipCity(rs.getString("shipcity"));
				oDto.setShipRegion(rs.getString("shipregion"));
				oDto.setShipPostalCode(rs.getString("shippostalcode"));
				oDto.setShipCountry(rs.getString("shipcountry"));

				dDto.setOrderID(rs.getInt("orderID"));
				dDto.setProductID(rs.getInt("productid"));
				dDto.setUnitPrice(rs.getDouble("unitprice"));
				dDto.setQuantity(rs.getInt("quantity"));
				dDto.setDiscount(rs.getDouble("discount"));

				pDto.setProductID(rs.getInt("productid"));
				pDto.setProductName(rs.getString("PRODUCTName"));
				pDto.setSupplierID(rs.getInt("SUPPLIERID"));
				pDto.setCategoryID(rs.getInt("CATEGORYID"));
				pDto.setQuantityPerUnit(rs.getString("QUANTITYPERUNIT"));
				pDto.setUnitPrice(rs.getInt("UNITPRICE"));
				pDto.setUnitsInStock(rs.getInt("UNITSINSTOCK"));
				pDto.setUnitsOnOrder(rs.getInt("UNITSONORDER"));
				pDto.setReorderLevel(rs.getInt("REORDERLEVEL"));
				pDto.setDiscontinued(rs.getInt("DISCONTINUED"));
				pDto.setPicture(rs.getString("Picture"));

				int delivState = -1;
				if (rs.getString("requiredDate") != null) { // 배송이 완료되었다면 = 배송완료
					delivState = 2;
				} else {// 배송이 완료되지 않았다면
					if (rs.getString("shippedDate") != null) { // 배송이 시작됐다면 = 배송중
						delivState = 1;
					} else {// 배송이 시작되지않았다면 = 준비중
						delivState = 0;
					}
				}

				if (delivState == 0) {
					if (oDto.getOrderDate() != null) {
						oDtos.add(oDto);
						pDtos.add(pDto);
						dDtos.add(dDto);
//					System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ delivery state is 0 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
					}
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

//		System.out.println(oDtos);
//		System.out.println(pDtos);
//		System.out.println(dDtos);
		ArrayList returnVal = null;
		if (tableName.equals("orders")) {
			returnVal = oDtos;
		} else if (tableName.equals("products")) {
			returnVal = pDtos;
		} else if (tableName.equals("orderDetails")) {
			returnVal = dDtos;
		}
//		System.out.println(returnVal);
		return returnVal;
	}

	public ArrayList ordersOrderdetailsProductsJoin_1(ArrayList<Integer> oidList, String tableName) {
		ArrayList oDtos = new ArrayList<OrdersDto>();
		ArrayList dDtos = new ArrayList<OrderDetailsDto>();
		ArrayList pDtos = new ArrayList<ProductsDto>();
		DBConn.getInstance();

		String sql = "select " + "orders.orderid, orders.customerid, orders.employeeid, orders.territoryid, "
				+ "orders.orderdate, orders.requireddate, orders.shippeddate, orders.shipvia, "
				+ "orders.freight, orders.shipname, orders.shipaddress, "
				+ "orders.shipcity, orders.shipregion, orders.shippostalcode, orders.shipcountry, " +

				"orderdetails.unitprice, orderdetails.quantity, orderdetails.discount, " +

				"products.productid, products.productname, products.supplierid, "
				+ "products.categoryid, products.quantityperunit, products.unitprice, products.unitsinstock, "
				+ "products.unitsonorder, products.reorderlevel, products.discontinued, products.picture " +

				"from orders, orderdetails, products " + "where orders.orderid = orderdetails.orderid "
				+ "and orderdetails.productid = products.productid " + "and (orders.orderid= ";

		for (int i = 0; i < oidList.size(); i++) {// size=10..9까지돌아
			sql += oidList.get(i); // sql = sql + oidList.get(i) sql += "'";
			if (i < oidList.size() - 1) {//
				sql += " or orderdetails.orderid=";
			}
		}
		sql += ") order by orders.orderdate desc";
		System.out.println("orders # Orderdetails # products Join sql : \n" + sql);

		ResultSet rs = DBConn.statementQuery(sql);
		try {
			while (rs.next()) {
				OrdersDto oDto = new OrdersDto();
				OrderDetailsDto dDto = new OrderDetailsDto();
				ProductsDto pDto = new ProductsDto();

				oDto.setOrderID(rs.getInt("orderID"));
				oDto.setCustomerID(rs.getString("customerID"));
				oDto.setEmployeeID(rs.getInt("employeeID"));
				oDto.setTerritoryID(rs.getString("territoryID"));
				oDto.setOrderDate(rs.getString("orderdate"));
				oDto.setRequiredDate(rs.getString("requireddate"));
				oDto.setShippedDate(rs.getString("shippeddate"));
				oDto.setShipVia(rs.getInt("shipVia"));
				oDto.setFreight(rs.getDouble("freight"));
				oDto.setShipName(rs.getString("shipname"));
				oDto.setShipAddress(rs.getString("shipaddress"));
				oDto.setShipCity(rs.getString("shipcity"));
				oDto.setShipRegion(rs.getString("shipregion"));
				oDto.setShipPostalCode(rs.getString("shippostalcode"));
				oDto.setShipCountry(rs.getString("shipcountry"));

				dDto.setOrderID(rs.getInt("orderID"));
				dDto.setProductID(rs.getInt("productid"));
				dDto.setUnitPrice(rs.getDouble("unitprice"));
				dDto.setQuantity(rs.getInt("quantity"));
				dDto.setDiscount(rs.getDouble("discount"));

				pDto.setProductID(rs.getInt("productid"));
				pDto.setProductName(rs.getString("PRODUCTName"));
				pDto.setSupplierID(rs.getInt("SUPPLIERID"));
				pDto.setCategoryID(rs.getInt("CATEGORYID"));
				pDto.setQuantityPerUnit(rs.getString("QUANTITYPERUNIT"));
				pDto.setUnitPrice(rs.getInt("UNITPRICE"));
				pDto.setUnitsInStock(rs.getInt("UNITSINSTOCK"));
				pDto.setUnitsOnOrder(rs.getInt("UNITSONORDER"));
				pDto.setReorderLevel(rs.getInt("REORDERLEVEL"));
				pDto.setDiscontinued(rs.getInt("DISCONTINUED"));
				pDto.setPicture(rs.getString("Picture"));

				int delivState = -1;
				if (rs.getString("requiredDate") != null) { // 배송이 완료되었다면 = 배송완료
					delivState = 2;
				} else {// 배송이 완료되지 않았다면
					if (rs.getString("shippedDate") != null) { // 배송이 시작됐다면 = 배송중
						delivState = 1;
					} else {// 배송이 시작되지않았다면 = 준비중
						delivState = 0;
					}
				}

				if (delivState == 1) {
					oDtos.add(oDto);
					pDtos.add(pDto);
					dDtos.add(dDto);
//					System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ delivery state is 1 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

//		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ oDtos @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n" + oDtos);
//		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ oDtos @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n" +pDtos);
//		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ oDtos @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n" +dDtos);
		ArrayList returnVal = null;
		if (tableName.equals("orders")) {
			returnVal = oDtos;
		} else if (tableName.equals("products")) {
			returnVal = pDtos;
		} else if (tableName.equals("orderDetails")) {
			returnVal = dDtos;
		}
//		System.out.println(returnVal);
		return returnVal;
	}

	public ArrayList ordersOrderdetailsProductsJoin_2(ArrayList<Integer> oidList, String tableName) {
		ArrayList oDtos = new ArrayList<OrdersDto>();
		ArrayList dDtos = new ArrayList<OrderDetailsDto>();
		ArrayList pDtos = new ArrayList<ProductsDto>();
		DBConn.getInstance();

		String sql = "select " + "orders.orderid, orders.customerid, orders.employeeid, orders.territoryid, "
				+ "orders.orderdate, orders.requireddate, orders.shippeddate, orders.shipvia, "
				+ "orders.freight, orders.shipname, orders.shipaddress, "
				+ "orders.shipcity, orders.shipregion, orders.shippostalcode, orders.shipcountry, " +

				"orderdetails.unitprice, orderdetails.quantity, orderdetails.discount, " +

				"products.productid, products.productname, products.supplierid, "
				+ "products.categoryid, products.quantityperunit, products.unitprice, products.unitsinstock, "
				+ "products.unitsonorder, products.reorderlevel, products.discontinued, products.picture " +

				"from orders, orderdetails, products " + "where orders.orderid = orderdetails.orderid "
				+ "and orderdetails.productid = products.productid " + "and (orders.orderid= ";

		for (int i = 0; i < oidList.size(); i++) {// size=10..9까지돌아
			sql += oidList.get(i); // sql = sql + oidList.get(i) sql += "'";
			if (i < oidList.size() - 1) {//
				sql += " or orderdetails.orderid=";
			}
		}
		sql += ") order by orders.orderdate desc";
		System.out.println("orders # Orderdetails # products Join sql : \n" + sql);

		ResultSet rs = DBConn.statementQuery(sql);
		try {
			while (rs.next()) {
				OrdersDto oDto = new OrdersDto();
				OrderDetailsDto dDto = new OrderDetailsDto();
				ProductsDto pDto = new ProductsDto();

				oDto.setOrderID(rs.getInt("orderID"));
				oDto.setCustomerID(rs.getString("customerID"));
				oDto.setEmployeeID(rs.getInt("employeeID"));
				oDto.setTerritoryID(rs.getString("territoryID"));
				oDto.setOrderDate(rs.getString("orderdate"));
				oDto.setRequiredDate(rs.getString("requireddate"));
				oDto.setShippedDate(rs.getString("shippeddate"));
				oDto.setShipVia(rs.getInt("shipVia"));
				oDto.setFreight(rs.getDouble("freight"));
				oDto.setShipName(rs.getString("shipname"));
				oDto.setShipAddress(rs.getString("shipaddress"));
				oDto.setShipCity(rs.getString("shipcity"));
				oDto.setShipRegion(rs.getString("shipregion"));
				oDto.setShipPostalCode(rs.getString("shippostalcode"));
				oDto.setShipCountry(rs.getString("shipcountry"));

				dDto.setOrderID(rs.getInt("orderID"));
				dDto.setProductID(rs.getInt("productid"));
				dDto.setUnitPrice(rs.getDouble("unitprice"));
				dDto.setQuantity(rs.getInt("quantity"));
				dDto.setDiscount(rs.getDouble("discount"));

				pDto.setProductID(rs.getInt("productid"));
				pDto.setProductName(rs.getString("PRODUCTName"));
				pDto.setSupplierID(rs.getInt("SUPPLIERID"));
				pDto.setCategoryID(rs.getInt("CATEGORYID"));
				pDto.setQuantityPerUnit(rs.getString("QUANTITYPERUNIT"));
				pDto.setUnitPrice(rs.getInt("UNITPRICE"));
				pDto.setUnitsInStock(rs.getInt("UNITSINSTOCK"));
				pDto.setUnitsOnOrder(rs.getInt("UNITSONORDER"));
				pDto.setReorderLevel(rs.getInt("REORDERLEVEL"));
				pDto.setDiscontinued(rs.getInt("DISCONTINUED"));
				pDto.setPicture(rs.getString("Picture"));

				int delivState = -1;
				if (rs.getString("requiredDate") != null) { // 배송이 완료되었다면 = 배송완료
					delivState = 2;
				} else {// 배송이 완료되지 않았다면
					if (rs.getString("shippedDate") != null) { // 배송이 시작됐다면 = 배송중
						delivState = 1;
					} else {// 배송이 시작되지않았다면 = 준비중
						delivState = 0;
					}
				}

				if (delivState == 2) {
					oDtos.add(oDto);
					pDtos.add(pDto);
					dDtos.add(dDto);
//					System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ delivery state is 2 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

//		System.out.println(oDtos);
//		System.out.println(pDtos);
//		System.out.println(dDtos);
		ArrayList returnVal = null;
		if (tableName.equals("orders")) {
			returnVal = oDtos;
		} else if (tableName.equals("products")) {
			returnVal = pDtos;
		} else if (tableName.equals("orderDetails")) {
			returnVal = dDtos;
		}
//		System.out.println(returnVal);
		return returnVal;
	}
	// ######################################################전체기간####################################################################

	// ######################################################특정 기간
	// 검색####################################################################
	public ArrayList ordersOrderdetailsProductsJoin_0(ArrayList<Integer> oidList, String tableName, String period) {
		ArrayList oDtos = new ArrayList<OrdersDto>();
		ArrayList dDtos = new ArrayList<OrderDetailsDto>();
		ArrayList pDtos = new ArrayList<ProductsDto>();
		DBConn.getInstance();

		String sql = "select " + "orders.orderid, orders.customerid, orders.employeeid, orders.territoryid, "
				+ "orders.orderdate, orders.requireddate, orders.shippeddate, orders.shipvia, "
				+ "orders.freight, orders.shipname, orders.shipaddress, "
				+ "orders.shipcity, orders.shipregion, orders.shippostalcode, orders.shipcountry, " +

				"orderdetails.unitprice, orderdetails.quantity, orderdetails.discount, " +

				"products.productid, products.productname, products.supplierid, "
				+ "products.categoryid, products.quantityperunit, products.unitprice, products.unitsinstock, "
				+ "products.unitsonorder, products.reorderlevel, products.discontinued, products.picture " +

				"from orders, orderdetails, products " + "where orders.orderid = orderdetails.orderid "
				+ "and orderdetails.productid = products.productid " + "and (orders.orderid= ";

		for (int i = 0; i < oidList.size(); i++) {// size=10..9까지돌아
			sql += oidList.get(i); // sql = sql + oidList.get(i) sql += "'";
			if (i < oidList.size() - 1) {//
				sql += " or orderdetails.orderid=";
			}
		}
		sql += ") and orders.orderdate > (select ADD_MONTHS(SYSDATE,-";
		sql += period;
		sql += ") from dual) order by orders.orderdate desc";
		System.out.println("orders # Orderdetails # products Join sql : \n" + sql);

		ResultSet rs = DBConn.statementQuery(sql);
		try {
			while (rs.next()) {
				OrdersDto oDto = new OrdersDto();
				OrderDetailsDto dDto = new OrderDetailsDto();
				ProductsDto pDto = new ProductsDto();

				oDto.setOrderID(rs.getInt("orderID"));
				oDto.setCustomerID(rs.getString("customerID"));
				oDto.setEmployeeID(rs.getInt("employeeID"));
				oDto.setTerritoryID(rs.getString("territoryID"));
				oDto.setOrderDate(rs.getString("orderdate"));
				oDto.setRequiredDate(rs.getString("requireddate"));
				oDto.setShippedDate(rs.getString("shippeddate"));
				oDto.setShipVia(rs.getInt("shipVia"));
				oDto.setFreight(rs.getDouble("freight"));
				oDto.setShipName(rs.getString("shipname"));
				oDto.setShipAddress(rs.getString("shipaddress"));
				oDto.setShipCity(rs.getString("shipcity"));
				oDto.setShipRegion(rs.getString("shipregion"));
				oDto.setShipPostalCode(rs.getString("shippostalcode"));
				oDto.setShipCountry(rs.getString("shipcountry"));

				dDto.setOrderID(rs.getInt("orderID"));
				dDto.setProductID(rs.getInt("productid"));
				dDto.setUnitPrice(rs.getDouble("unitprice"));
				dDto.setQuantity(rs.getInt("quantity"));
				dDto.setDiscount(rs.getDouble("discount"));

				pDto.setProductID(rs.getInt("productid"));
				pDto.setProductName(rs.getString("PRODUCTName"));
				pDto.setSupplierID(rs.getInt("SUPPLIERID"));
				pDto.setCategoryID(rs.getInt("CATEGORYID"));
				pDto.setQuantityPerUnit(rs.getString("QUANTITYPERUNIT"));
				pDto.setUnitPrice(rs.getInt("UNITPRICE"));
				pDto.setUnitsInStock(rs.getInt("UNITSINSTOCK"));
				pDto.setUnitsOnOrder(rs.getInt("UNITSONORDER"));
				pDto.setReorderLevel(rs.getInt("REORDERLEVEL"));
				pDto.setDiscontinued(rs.getInt("DISCONTINUED"));
				pDto.setPicture(rs.getString("Picture"));

				int delivState = -1;
				if (rs.getString("requiredDate") != null) { // 배송이 완료되었다면 = 배송완료
					delivState = 2;
				} else {// 배송이 완료되지 않았다면
					if (rs.getString("shippedDate") != null) { // 배송이 시작됐다면 = 배송중
						delivState = 1;
					} else {// 배송이 시작되지않았다면 = 준비중
						delivState = 0;
					}
				}

				if (delivState == 0) {
					oDtos.add(oDto);
					pDtos.add(pDto);
					dDtos.add(dDto);
//						System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ delivery state is 0 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

//			System.out.println(oDtos);
//			System.out.println(pDtos);
//			System.out.println(dDtos);
		ArrayList returnVal = null;
		if (tableName.equals("orders")) {
			returnVal = oDtos;
		} else if (tableName.equals("products")) {
			returnVal = pDtos;
		} else if (tableName.equals("orderDetails")) {
			returnVal = dDtos;
		}
//			System.out.println(returnVal);
		return returnVal;
	}

	public ArrayList ordersOrderdetailsProductsJoin_1(ArrayList<Integer> oidList, String tableName, String period) {
		ArrayList oDtos = new ArrayList<OrdersDto>();
		ArrayList dDtos = new ArrayList<OrderDetailsDto>();
		ArrayList pDtos = new ArrayList<ProductsDto>();
		DBConn.getInstance();

		String sql = "select " + "orders.orderid, orders.customerid, orders.employeeid, orders.territoryid, "
				+ "orders.orderdate, orders.requireddate, orders.shippeddate, orders.shipvia, "
				+ "orders.freight, orders.shipname, orders.shipaddress, "
				+ "orders.shipcity, orders.shipregion, orders.shippostalcode, orders.shipcountry, " +

				"orderdetails.unitprice, orderdetails.quantity, orderdetails.discount, " +

				"products.productid, products.productname, products.supplierid, "
				+ "products.categoryid, products.quantityperunit, products.unitprice, products.unitsinstock, "
				+ "products.unitsonorder, products.reorderlevel, products.discontinued, products.picture " +

				"from orders, orderdetails, products " + "where orders.orderid = orderdetails.orderid "
				+ "and orderdetails.productid = products.productid " + "and (orders.orderid= ";

		for (int i = 0; i < oidList.size(); i++) {// size=10..9까지돌아
			sql += oidList.get(i); // sql = sql + oidList.get(i) sql += "'";
			if (i < oidList.size() - 1) {//
				sql += " or orderdetails.orderid=";
			}
		}
		sql += ") and orders.orderdate > (select ADD_MONTHS(SYSDATE,-";
		sql += period;
		sql += ") from dual) order by orders.orderdate desc";
		System.out.println("orders # Orderdetails # products Join sql : \n" + sql);

		ResultSet rs = DBConn.statementQuery(sql);
		try {
			while (rs.next()) {
				OrdersDto oDto = new OrdersDto();
				OrderDetailsDto dDto = new OrderDetailsDto();
				ProductsDto pDto = new ProductsDto();

				oDto.setOrderID(rs.getInt("orderID"));
				oDto.setCustomerID(rs.getString("customerID"));
				oDto.setEmployeeID(rs.getInt("employeeID"));
				oDto.setTerritoryID(rs.getString("territoryID"));
				oDto.setOrderDate(rs.getString("orderdate"));
				oDto.setRequiredDate(rs.getString("requireddate"));
				oDto.setShippedDate(rs.getString("shippeddate"));
				oDto.setShipVia(rs.getInt("shipVia"));
				oDto.setFreight(rs.getDouble("freight"));
				oDto.setShipName(rs.getString("shipname"));
				oDto.setShipAddress(rs.getString("shipaddress"));
				oDto.setShipCity(rs.getString("shipcity"));
				oDto.setShipRegion(rs.getString("shipregion"));
				oDto.setShipPostalCode(rs.getString("shippostalcode"));
				oDto.setShipCountry(rs.getString("shipcountry"));

				dDto.setOrderID(rs.getInt("orderID"));
				dDto.setProductID(rs.getInt("productid"));
				dDto.setUnitPrice(rs.getDouble("unitprice"));
				dDto.setQuantity(rs.getInt("quantity"));
				dDto.setDiscount(rs.getDouble("discount"));

				pDto.setProductID(rs.getInt("productid"));
				pDto.setProductName(rs.getString("PRODUCTName"));
				pDto.setSupplierID(rs.getInt("SUPPLIERID"));
				pDto.setCategoryID(rs.getInt("CATEGORYID"));
				pDto.setQuantityPerUnit(rs.getString("QUANTITYPERUNIT"));
				pDto.setUnitPrice(rs.getInt("UNITPRICE"));
				pDto.setUnitsInStock(rs.getInt("UNITSINSTOCK"));
				pDto.setUnitsOnOrder(rs.getInt("UNITSONORDER"));
				pDto.setReorderLevel(rs.getInt("REORDERLEVEL"));
				pDto.setDiscontinued(rs.getInt("DISCONTINUED"));
				pDto.setPicture(rs.getString("Picture"));

				int delivState = -1;
				if (rs.getString("requiredDate") != null) { // 배송이 완료되었다면 = 배송완료
					delivState = 2;
				} else {// 배송이 완료되지 않았다면
					if (rs.getString("shippedDate") != null) { // 배송이 시작됐다면 = 배송중
						delivState = 1;
					} else {// 배송이 시작되지않았다면 = 준비중
						delivState = 0;
					}
				}

				if (delivState == 1) {
					oDtos.add(oDto);
					pDtos.add(pDto);
					dDtos.add(dDto);
//						System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ delivery state is 1 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

//			System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ oDtos @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n" + oDtos);
//			System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ oDtos @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n" +pDtos);
//			System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ oDtos @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n" +dDtos);
		ArrayList returnVal = null;
		if (tableName.equals("orders")) {
			returnVal = oDtos;
		} else if (tableName.equals("products")) {
			returnVal = pDtos;
		} else if (tableName.equals("orderDetails")) {
			returnVal = dDtos;
		}
//			System.out.println(returnVal);
		return returnVal;
	}

	public ArrayList ordersOrderdetailsProductsJoin_2(ArrayList<Integer> oidList, String tableName, String period) {
		ArrayList oDtos = new ArrayList<OrdersDto>();
		ArrayList dDtos = new ArrayList<OrderDetailsDto>();
		ArrayList pDtos = new ArrayList<ProductsDto>();
		DBConn.getInstance();

		String sql = "select " + "orders.orderid, orders.customerid, orders.employeeid, orders.territoryid, "
				+ "orders.orderdate, orders.requireddate, orders.shippeddate, orders.shipvia, "
				+ "orders.freight, orders.shipname, orders.shipaddress, "
				+ "orders.shipcity, orders.shipregion, orders.shippostalcode, orders.shipcountry, " +

				"orderdetails.unitprice, orderdetails.quantity, orderdetails.discount, " +

				"products.productid, products.productname, products.supplierid, "
				+ "products.categoryid, products.quantityperunit, products.unitprice, products.unitsinstock, "
				+ "products.unitsonorder, products.reorderlevel, products.discontinued, products.picture " +

				"from orders, orderdetails, products " + "where orders.orderid = orderdetails.orderid "
				+ "and orderdetails.productid = products.productid " + "and (orders.orderid= ";

		for (int i = 0; i < oidList.size(); i++) {// size=10..9까지돌아
			sql += oidList.get(i); // sql = sql + oidList.get(i) sql += "'";
			if (i < oidList.size() - 1) {//
				sql += " or orderdetails.orderid=";
			}
		}
		sql += ") and orders.orderdate > (select ADD_MONTHS(SYSDATE,-";
		sql += period;
		sql += ") from dual) order by orders.orderdate desc";
		System.out.println("orders # Orderdetails # products Join sql : \n" + sql);

		ResultSet rs = DBConn.statementQuery(sql);
		try {
			while (rs.next()) {
				OrdersDto oDto = new OrdersDto();
				OrderDetailsDto dDto = new OrderDetailsDto();
				ProductsDto pDto = new ProductsDto();

				oDto.setOrderID(rs.getInt("orderID"));
				oDto.setCustomerID(rs.getString("customerID"));
				oDto.setEmployeeID(rs.getInt("employeeID"));
				oDto.setTerritoryID(rs.getString("territoryID"));
				oDto.setOrderDate(rs.getString("orderdate"));
				oDto.setRequiredDate(rs.getString("requireddate"));
				oDto.setShippedDate(rs.getString("shippeddate"));
				oDto.setShipVia(rs.getInt("shipVia"));
				oDto.setFreight(rs.getDouble("freight"));
				oDto.setShipName(rs.getString("shipname"));
				oDto.setShipAddress(rs.getString("shipaddress"));
				oDto.setShipCity(rs.getString("shipcity"));
				oDto.setShipRegion(rs.getString("shipregion"));
				oDto.setShipPostalCode(rs.getString("shippostalcode"));
				oDto.setShipCountry(rs.getString("shipcountry"));

				dDto.setOrderID(rs.getInt("orderID"));
				dDto.setProductID(rs.getInt("productid"));
				dDto.setUnitPrice(rs.getDouble("unitprice"));
				dDto.setQuantity(rs.getInt("quantity"));
				dDto.setDiscount(rs.getDouble("discount"));

				pDto.setProductID(rs.getInt("productid"));
				pDto.setProductName(rs.getString("PRODUCTName"));
				pDto.setSupplierID(rs.getInt("SUPPLIERID"));
				pDto.setCategoryID(rs.getInt("CATEGORYID"));
				pDto.setQuantityPerUnit(rs.getString("QUANTITYPERUNIT"));
				pDto.setUnitPrice(rs.getInt("UNITPRICE"));
				pDto.setUnitsInStock(rs.getInt("UNITSINSTOCK"));
				pDto.setUnitsOnOrder(rs.getInt("UNITSONORDER"));
				pDto.setReorderLevel(rs.getInt("REORDERLEVEL"));
				pDto.setDiscontinued(rs.getInt("DISCONTINUED"));
				pDto.setPicture(rs.getString("Picture"));

				int delivState = -1;
				if (rs.getString("requiredDate") != null) { // 배송이 완료되었다면 = 배송완료
					delivState = 2;
				} else {// 배송이 완료되지 않았다면
					if (rs.getString("shippedDate") != null) { // 배송이 시작됐다면 = 배송중
						delivState = 1;
					} else {// 배송이 시작되지않았다면 = 준비중
						delivState = 0;
					}
				}

				if (delivState == 2) {
					oDtos.add(oDto);
					pDtos.add(pDto);
					dDtos.add(dDto);
//						System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ delivery state is 2 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

//			System.out.println(oDtos);
//			System.out.println(pDtos);
//			System.out.println(dDtos);
		ArrayList returnVal = null;
		if (tableName.equals("orders")) {
			returnVal = oDtos;
		} else if (tableName.equals("products")) {
			returnVal = pDtos;
		} else if (tableName.equals("orderDetails")) {
			returnVal = dDtos;
		}
//			System.out.println(returnVal);
		return returnVal;
	}

	// ######################################################특정 기간
	// 검색####################################################################
	public String makeCorrectDate(String date) {
		String cDate = "20";
		if (date == null) {
			cDate = null;
		} else {
			if (date.length() == 17) {
				cDate += date;
			} else {
				cDate = date;
			}
		}
		return cDate;
	}
}