package com.human.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;

import com.human.dto.CartVO;
import com.human.util.DBConn;
import java.util.ArrayList;

public class CartDao {
	private CartDao() {
	}

	// CartDAO 싱글톤 객체 만들기
	private static CartDao instance = new CartDao();

	public static CartDao getInstance() {
		return instance;
	}

	// 장바구니 담기
	public void insertCart(CartVO cartVO) {
		String sql = "insert into cart(cartId,userId,productId,productName,quantity,price2,picture)"
				+ " values(cart_seq.nextval,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cartVO.getUserId());
			pstmt.setInt(2, cartVO.getProductId());
			pstmt.setString(3, cartVO.getProductName());
			pstmt.setInt(4, cartVO.getQuantity());
			pstmt.setDouble(5, cartVO.getPrice2());
			pstmt.setString(6, cartVO.getPicture());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(conn, pstmt);
		}
	}

	// 장바구니 목록
	public ArrayList<CartVO> listCart(String userId) {
		ArrayList<CartVO> cartList = new ArrayList<CartVO>();
		Connection conn = DBConn.getConnection();

		String sql = String.format("select * from cart where userId='%s' order by cartId desc", userId);
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				cartList.add(new CartVO(rs.getInt("cartId"), rs.getString("userId"), rs.getInt("productId"),
						rs.getString("productName"), rs.getInt("quantity"), rs.getDouble("price2"),
						rs.getTimestamp("indate"), rs.getString("picture")));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cartList;
	}

	// 장바구니 삭제
	public void deleteCart(int cartId) {
		String sql = "delete cart where cartId=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cartId);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(conn, pstmt);
		}
	}

	public void updateCart(String userId, int cartId, int quantity) {
		String sql = "update cart set quantity=? where cartId=? and userId=?";
		Connection conn = DBConn.getConnection();
		Statement st = null;
		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, quantity);
			pstmt.setInt(2, cartId);
			pstmt.setString(3, userId);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(conn, pstmt);
		}

	}

	// 장바구니 체크 값만 토탈금액에 적용
	public ArrayList<CartVO> checkTotal(String userId) {
		ArrayList<CartVO> cartList = new ArrayList<CartVO>();
		Connection conn = DBConn.getConnection();

		String sql = String.format("select * from cart where userId='%s' order by cartId desc", userId);
		Statement st = null;
		ResultSet rs = null;
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				cartList.add(new CartVO(rs.getInt("cartId"), rs.getString("userId"), rs.getInt("productId"),
						rs.getString("productName"), rs.getInt("quantity"), rs.getDouble("price2"),
						rs.getTimestamp("indate"), rs.getString("picture")));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cartList;
	}

	// 결제 완료시 해당 ID의 장바구니 삭제
	public void deleteCart(String userId) {
		String sql = "delete cart where userId=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(conn, pstmt);
		}
	}
	
}
