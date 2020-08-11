package com.human.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import com.human.dto.OrderDto;
import com.human.util.DBConn;

public class OrderDao {

	public ArrayList<OrderDto> select(int viewPage) {		
		
		ArrayList<OrderDto> dtos = new ArrayList<OrderDto>();
		Connection con=DBConn.getInstance();
		
		String sql="select * from (select rownum m, " + 
				"o.orderid,o.customerid,o.orderdate,o.shippeddate, " + 
				"p.productname, " + 
				"od.unitprice,od.quantity,od.discount " + 
				"from orders o,orderdetails od,products p " + 
				"where o.orderid=od.orderid and p.productid=od.productid "
				+ "and ROWNUM <="+(viewPage*10)+" order by orderId asc)where m >"+(viewPage*10-10);
		
		Statement st=null;
		ResultSet rs=null;
		
		try {
			
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				dtos.add(new OrderDto(
						rs.getInt("orderid"),rs.getString("customerid"),
						rs.getDate("orderdate"),rs.getDate("shippeddate"),
						rs.getString("productname"),
						rs.getDouble("unitprice"),rs.getInt("quantity"),
						rs.getDouble("discount")
						));
			}
						DBConn.dbClose();
		
		}catch (SQLException e) {
			
			e.printStackTrace();
		}
		return dtos;
		
	}
	
	public ArrayList<OrderDto> selectid(String id){
		ArrayList<OrderDto> dtos = new ArrayList<>();
		System.out.println("1");	
		Connection con=DBConn.getInstance();
		String sql= String.format("select " + 
				"o.orderid,o.customerid,o.orderdate,o.shippeddate, " + 
				"p.productname, " + 
				"od.unitprice,od.quantity,od.discount " + 
				"from orders o,orderdetails od,products p " + 
				"where o.orderid=od.orderid and p.productid=od.productid "
				+ "and o.orderid=%s",id);
		Statement st=null;
		ResultSet rs=null;
	System.out.println("2");
		try {
			
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				dtos.add(new OrderDto(
						rs.getInt("orderid"),rs.getString("customerid"),
						rs.getDate("orderdate"),rs.getDate("shippeddate"),
						rs.getString("productname"),
						rs.getDouble("unitprice"),rs.getInt("quantity"),
						rs.getDouble("discount")));
				}
				DBConn.dbClose();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return dtos;
	}
	
	public ArrayList<OrderDto> selectname(String name){
		ArrayList<OrderDto> dtos = new ArrayList<>();
		
		Connection con=DBConn.getInstance();
		String sql= String.format("select " + 
				"o.orderid,o.customerid,o.orderdate,o.shippeddate, " + 
				"p.productname, " + 
				"od.unitprice,od.quantity,od.discount " + 
				"from orders o,orderdetails od,products p " + 
				"where o.orderid=od.orderid and p.productid=od.productid "
				+ "and p.productname='%s'",name);
		Statement st=null;
		ResultSet rs=null;
	
		try {
			
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				dtos.add(new OrderDto(
						rs.getInt("orderid"),rs.getString("customerid"),
						rs.getDate("orderdate"),rs.getDate("shippeddate"),
						rs.getString("productname"),
						rs.getDouble("unitprice"),rs.getInt("quantity"),
						rs.getDouble("discount")));
				}
				DBConn.dbClose();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return dtos;
	}

	


}
