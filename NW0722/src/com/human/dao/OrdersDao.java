package com.human.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.human.dto.OrdersDto;
import com.human.util.DBConn;

public class OrdersDao {
	public int ordersInsert(OrdersDto dto) {
		int returnValue = 0;
		DBConn.getInstance();

//		String sql = "insert into orders values(order_seq.nextval,'%s',%d,'%s'," + "to_date('%s','yyyy-MM-dd HH:mi:ss'),"
//				+ "to_date('%s','yyyy-MM-dd HH:mi:ss'),to_date('%s','yyyy-MM-dd HH:mi:ss')," + "%d,%f,'%s','%s','%s','%s','%s','%s')";
//		sql = String.format(sql, dto.getCustomerID(), dto.getEmployeeID(), dto.getTerritoryID(),
//				dto.getOrderDate(), dto.getRequiredDate(), dto.getShippedDate(), dto.getShipVia(), dto.getFreight(),
//				dto.getShipName(), dto.getShipAddress(), dto.getShipCity(), dto.getShipRegion(),
//				dto.getShipPostalCode(), dto.getShipCountry());
		
		String sql = "insert into orders(orderid, customerid, orderdate, requireddate, shippeddate, shipaddress, shipcity, shipregion, shippostalcode, shipcountry) values(order_seq.nextval,'%s',to_date(sysdate,'yy-MM-dd hh24:mi:ss'),"
				+ "null,null,'%s','%s','%s','%s','%s')";
		sql = String.format(sql, dto.getCustomerID(),
				dto.getShipAddress(), dto.getShipCity(), dto.getShipRegion(),
				dto.getShipPostalCode(), dto.getShipCountry());
		returnValue = DBConn.statementUpdate(sql);
		System.out.println("ordersInsert : "+returnValue);
		DBConn.dbClose();
		return returnValue;
	}

	public int ordersDelete(int orderID) {
		int returnValue = 0;
		DBConn.getInstance();

		String sql = "delete orders where orderID=%d";
		sql = String.format(sql, orderID);
		returnValue = DBConn.statementUpdate(sql);

		DBConn.dbClose();
		return returnValue;
	}

	public static ArrayList<OrdersDto> ordersSelect() {
		ArrayList<OrdersDto> dtos = new ArrayList<>();
		DBConn.getInstance();

		String sql = "select * from orders";
		ResultSet rs = DBConn.statementQuery(sql);
		try {
			while (rs.next()) {
				OrdersDto dto = new OrdersDto();
				dto.setOrderID(rs.getInt("orderID"));
				dto.setCustomerID(rs.getString("customerID"));
				dto.setEmployeeID(rs.getInt("employeeID"));
				dto.setTerritoryID(rs.getString("territoryID"));
				dto.setOrderDate(rs.getString("orderdate"));
				dto.setRequiredDate(rs.getString("requireddate"));
				dto.setShippedDate(rs.getString("shippeddate"));
				dto.setShipVia(rs.getInt("shipVia"));
				dto.setFreight(rs.getDouble("freight"));
				dto.setShipName(rs.getString("shipname"));
				dto.setShipAddress(rs.getString("shipaddress"));
				dto.setShipCity(rs.getString("shipcity"));
				dto.setShipRegion(rs.getString("shipregion"));
				dto.setShipPostalCode(rs.getString("shippostalcode"));
				dto.setShipCountry(rs.getString("shipcountry"));

				dtos.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		DBConn.dbClose();
		return dtos;
	}
	
	public ArrayList<OrdersDto> ordersSelectDesc() {
		ArrayList<OrdersDto> dtos = new ArrayList<OrdersDto>();
		DBConn.getInstance();

		String sql = "select * from orders order by orderid desc";
		ResultSet rs = DBConn.statementQuery(sql);
		try {
			while (rs.next()) {
				OrdersDto dto = new OrdersDto();
				dto.setOrderID(rs.getInt("orderID"));
				dto.setCustomerID(rs.getString("customerID"));
				dto.setEmployeeID(rs.getInt("employeeID"));
				dto.setTerritoryID(rs.getString("territoryID"));
				dto.setOrderDate(rs.getString("orderdate"));
				dto.setRequiredDate(rs.getString("requireddate"));
				dto.setShippedDate(rs.getString("shippeddate"));
				dto.setShipVia(rs.getInt("shipVia"));
				dto.setFreight(rs.getDouble("freight"));
				dto.setShipName(rs.getString("shipname"));
				dto.setShipAddress(rs.getString("shipaddress"));
				dto.setShipCity(rs.getString("shipcity"));
				dto.setShipRegion(rs.getString("shipregion"));
				dto.setShipPostalCode(rs.getString("shippostalcode"));
				dto.setShipCountry(rs.getString("shipcountry"));

				dtos.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		//DBConn.dbClose();
		return dtos;
	}

	public int ordersUpdate(int orderID, String customerID) {
		int returnValue = 0;
		DBConn.getInstance();

		String sql = "update orders set customerID='%s' where orderID=%d";
		sql = String.format(sql, customerID, orderID);
		returnValue = DBConn.statementUpdate(sql);

		DBConn.dbClose();
		return returnValue;
	}
	
	public int ordersCancelUpdate(int orderID) {
		int returnValue = 0;
		DBConn.getInstance();
		String sql = "update orders set "
				+ "EmployeeID = null, OrderDate = null, RequiredDate = null, ShippedDate = null, ShipVia = null, Freight = null, "
				+ "ShipName = null, ShipAddress = null, ShipCity = null, ShipRegion = null, ShipPostalCode = null, ShipCountry = null "
				+ "where orderID = %d";
		sql = String.format(sql, orderID);
		System.out.println("####################OdersDao#####################ordersCancelUpdate######################\n" + sql);
		returnValue = DBConn.statementUpdate(sql);

		DBConn.dbClose();
		return returnValue;
	}
	

}
