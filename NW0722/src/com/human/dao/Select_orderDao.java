package com.human.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.human.dto.FileDto;
import com.human.dto.Select_orderDto;
import com.human.util.DBConn;

public class Select_orderDao {
	
	public ArrayList<Select_orderDto> select(String id,String page,String pageDataCount){
		ArrayList<Select_orderDto> dtos=new ArrayList<Select_orderDto>();
		DBConn.getInstance();
		String sql=String.format("select * from(select rownum m, x.* from(select" +
				" b.orderid ,c.quantity, "+
				"c.unitprice, d.productname, d.picture,c.productid "+
				"from customers a,orders b,orderdetails c,products d,newcustomer e "+
				"where a.customerid=e.newid and e.newid='%s' and a.customerid=b.customerid "+
				"and b.orderid=c.orderid and c.productid=d.productid order by rownum desc) x where rownum <= %s*%s order by m asc) "+
				"where m>=(%s-1)*%s+1",id,page,pageDataCount,page,pageDataCount);
		
		
		ResultSet rs=DBConn.statementQuery(sql);
		System.out.println(sql);
		try {
			while(rs.next()) {
				Select_orderDto dto=new Select_orderDto();
				dto.setOrderId(rs.getInt("orderId"));
				dto.setProductName(rs.getString("productName"));
				dto.setQuantity(rs.getInt("quantity"));
				dto.setUnitprice(rs.getDouble("unitprice"));
				dto.setPicture(rs.getString("picture"));
				dto.setProductId(rs.getString("productid"));
				dto.setSum(Math.round((rs.getDouble("unitprice")*rs.getDouble("quantity"))));
				dtos.add(dto);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return dtos;
	}

	public int dataCount(String id) {
		int returnValue = 0;
		Connection con = DBConn.getConnection();
		String sql = String.format("select count(*) bCount from orders where customerID='%s'", id);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				returnValue = rs.getInt("bCount");
				System.out.println(id);
			}
			DBConn.close(st, rs);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return returnValue;
	}
}


