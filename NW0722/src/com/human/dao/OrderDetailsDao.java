package com.human.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.human.dto.OrderDetailsDto;
import com.human.dto.OrdersDto;
import com.human.util.DBConn;

public class OrderDetailsDao {

	// 154MVC
	// insert
	public int insert(OrderDetailsDto dto) {
		int returnValue = 0;

		DBConn.getInstance();
		String sql = "INSERT INTO OrderDetails " + "VALUES (%d,%d,%f,%d,%f)";

		sql = String.format(sql, dto.getOrderID(), dto.getProductID(), dto.getUnitPrice(), dto.getQuantity(),
				dto.getDiscount());

		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();

		return returnValue;
	}

	// update
	public int update(OrderDetailsDto dto) {
		int returnValue = 0;

		DBConn.getInstance();
		String sql = "update OrderDetails " + "set quantity = %d, discount = %f"
				+ "where OrderId = %d and productId = %d";

		sql = String.format(sql, dto.getQuantity(), dto.getDiscount(), dto.getProductID(), dto.getOrderID());

		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();

		return returnValue;
	}

//	public int update(int orderID, int productID, int quantity, double discount) {
//		int returnValue = 0;
//
//		DBConn.getInstance();
//		String sql = "update OrderDetails set quantity=%d, discount=%d where productId=%d, OrderId=%d";
//
//		sql = String.format(sql, orderID, productID, quantity, discount);
//
//		returnValue = DBConn.StatementUpdate(sql);
//		DBConn.dbClose();
//
//		return returnValue;
//	}

	// delete
	public int delete(int orderId, int quantity) {
		int returnValue = 0;

		DBConn.getInstance();
		String sql = "delete from OrderDetails " + "where OrderId=%d";

		sql = String.format(sql, orderId);

		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();

		return returnValue;
	}

	// select 153MVC
	// �Ѱ��� �����Ͱ� �ƴ� �������� �����͸� �����ְ� ó���ؾ� �ϱ� ������ ArrayList�� ����ؾ� �Ѵ�.
	public static ArrayList<OrderDetailsDto> select() {
		ArrayList<OrderDetailsDto> dtos = new ArrayList<OrderDetailsDto>();

		DBConn.getInstance();
		String sql = "select * from OrderDetails ";
		ResultSet rs = DBConn.statementQuery(sql);

		try {
			while (rs.next()) {
				OrderDetailsDto dto = new OrderDetailsDto();
				dto.setOrderID(rs.getInt("orderId"));
				dto.setProductID(rs.getInt("productId"));
				dto.setUnitPrice(rs.getDouble("unitprice"));
				dto.setQuantity(rs.getInt("quantity"));
				dto.setDiscount(rs.getDouble("discount"));

				// dtos�� dto �߰�
				dtos.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dtos;
	}
	
	
}
