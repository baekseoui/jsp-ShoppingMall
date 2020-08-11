package com.human.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

import com.human.dto.ProductDto;
import com.human.util.DBConn;

public class ProductDao {
	// ----------------------------Beverages------------------------------------
	public ArrayList<ProductDto> selectBeverages() {
		ArrayList<ProductDto> dtos = new ArrayList<>();

		Connection con = DBConn.getConnection();
		String sql = "select * from PRODUCTS where CategoryId=1";
		Statement st = null;
		ResultSet rs = null;
		
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				dtos.add(new ProductDto(rs.getInt("productId"), 
						rs.getString("productName"), 
						rs.getInt("supplierId"),
						rs.getInt("categoryId"),
						rs.getString("quantityPerUnit"),
						rs.getDouble("unitPrice"),
						rs.getInt("unitsInStock"),
						rs.getInt("unitsOnOrder"),
						rs.getInt("reorderLevel"),
						rs.getInt("discontinued"),
						rs.getString("picture")));
						
			}
			DBConn.close(st, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtos;
	}
	// -------------------------------------------------------------------------

	// ----------------------------Condiments------------------------------------
	public ArrayList<ProductDto> selectCondiments() {
		ArrayList<ProductDto> dtos = new ArrayList<>();

		Connection con = DBConn.getConnection();
		String sql = "select * from PRODUCTS where CategoryId=2";
		System.out.println(sql);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				dtos.add(new ProductDto(rs.getInt("productId"), 
						rs.getString("productName"), 
						rs.getInt("supplierId"),
						rs.getInt("categoryId"),
						rs.getString("quantityPerUnit"),
						rs.getDouble("unitPrice"),
						rs.getInt("unitsInStock"),
						rs.getInt("unitsOnOrder"),
						rs.getInt("reorderLevel"),
						rs.getInt("discontinued"),
						rs.getString("picture")));
			}
			DBConn.close(st, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtos;
	}
	// -------------------------------------------------------------------------

	// ---------------------------Confections------------------------------------
	public ArrayList<ProductDto> selectConfections() {
		ArrayList<ProductDto> dtos = new ArrayList<>();

		Connection con = DBConn.getConnection();
		String sql = "select * from PRODUCTS where CategoryId=3";
		System.out.println(sql);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				dtos.add(new ProductDto(rs.getInt("productId"), 
						rs.getString("productName"), 
						rs.getInt("supplierId"),
						rs.getInt("categoryId"),
						rs.getString("quantityPerUnit"),
						rs.getDouble("unitPrice"),
						rs.getInt("unitsInStock"),
						rs.getInt("unitsOnOrder"),
						rs.getInt("reorderLevel"),
						rs.getInt("discontinued"),
						rs.getString("picture")));
			}
			DBConn.close(st, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtos;
	}
	// -------------------------------------------------------------------------

	// ----------------------------DairyProducts------------------------------------
	public ArrayList<ProductDto> selectDairyProducts() {
		ArrayList<ProductDto> dtos = new ArrayList<>();

		Connection con = DBConn.getConnection();
		String sql = "select * from PRODUCTS where CategoryId=4";
		System.out.println(sql);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				dtos.add(new ProductDto(rs.getInt("productId"), 
						rs.getString("productName"), 
						rs.getInt("supplierId"),
						rs.getInt("categoryId"),
						rs.getString("quantityPerUnit"),
						rs.getDouble("unitPrice"),
						rs.getInt("unitsInStock"),
						rs.getInt("unitsOnOrder"),
						rs.getInt("reorderLevel"),
						rs.getInt("discontinued"),
						rs.getString("picture")));
			}
			DBConn.close(st, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtos;
	}
	// -------------------------------------------------------------------------

	// ----------------------------GrainsCereals------------------------------------
	public ArrayList<ProductDto> selectGrainsCereals() {
		ArrayList<ProductDto> dtos = new ArrayList<>();
		
		Connection con = DBConn.getConnection();
	
		String sql = "select * from PRODUCTS where CategoryId=5";
		System.out.println(sql);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				dtos.add(new ProductDto(rs.getInt("productId"), 
						rs.getString("productName"), 
						rs.getInt("supplierId"),
						rs.getInt("categoryId"),
						rs.getString("quantityPerUnit"),
						rs.getDouble("unitPrice"),
						rs.getInt("unitsInStock"),
						rs.getInt("unitsOnOrder"),
						rs.getInt("reorderLevel"),
						rs.getInt("discontinued"),
						rs.getString("picture")));
			}
			DBConn.close(st, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtos;
	}
	// -------------------------------------------------------------------------

	// ----------------------------MeatPoultry------------------------------------
	public ArrayList<ProductDto> selectMeatPoultry() {
		ArrayList<ProductDto> dtos = new ArrayList<>();

		Connection con = DBConn.getConnection();
		String sql = "select * from PRODUCTS where CategoryId=6";
		System.out.println(sql);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				dtos.add(new ProductDto(rs.getInt("productId"), 
						rs.getString("productName"), 
						rs.getInt("supplierId"),
						rs.getInt("categoryId"),
						rs.getString("quantityPerUnit"),
						rs.getDouble("unitPrice"),
						rs.getInt("unitsInStock"),
						rs.getInt("unitsOnOrder"),
						rs.getInt("reorderLevel"),
						rs.getInt("discontinued"),
						rs.getString("picture")));
			}
			DBConn.close(st, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtos;
	}
	// -------------------------------------------------------------------------

	// ----------------------------Produce------------------------------------
	public ArrayList<ProductDto> selectProduce() {
		ArrayList<ProductDto> dtos = new ArrayList<>();

		Connection con = DBConn.getConnection();
		String sql = "select * from PRODUCTS where CategoryId=7";
		System.out.println(sql);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				dtos.add(new ProductDto(rs.getInt("productId"), 
						rs.getString("productName"), 
						rs.getInt("supplierId"),
						rs.getInt("categoryId"),
						rs.getString("quantityPerUnit"),
						rs.getDouble("unitPrice"),
						rs.getInt("unitsInStock"),
						rs.getInt("unitsOnOrder"),
						rs.getInt("reorderLevel"),
						rs.getInt("discontinued"),
						rs.getString("picture")));
			}
			DBConn.close(st, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtos;
	}
	// -------------------------------------------------------------------------

	// ----------------------------Seafood------------------------------------
	public ArrayList<ProductDto> selectSeafood() {
		ArrayList<ProductDto> dtos = new ArrayList<>();

		Connection con = DBConn.getConnection();
		String sql = "select * from PRODUCTS where CategoryId=8";
		System.out.println(sql);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				dtos.add(new ProductDto(rs.getInt("productId"), 
						rs.getString("productName"), 
						rs.getInt("supplierId"),
						rs.getInt("categoryId"),
						rs.getString("quantityPerUnit"),
						rs.getDouble("unitPrice"),
						rs.getInt("unitsInStock"),
						rs.getInt("unitsOnOrder"),
						rs.getInt("reorderLevel"),
						rs.getInt("discontinued"),
						rs.getString("picture")));
			}
			DBConn.close(st, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtos;
	}

	// ----------------------------------Search---------------------------------------
	public ArrayList<ProductDto> selectSearch(String search) {
		ArrayList<ProductDto> dtos = new ArrayList<>();
		Connection con = DBConn.getConnection();
		String sql = String.format("select * from products where upper(productname) like upper('%%%s%%')", search);
		System.out.println(sql);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				dtos.add(new ProductDto(rs.getInt("productId"), 
						rs.getString("productName"), 
						rs.getInt("supplierId"),
						rs.getInt("categoryId"),
						rs.getString("quantityPerUnit"),
						rs.getDouble("unitPrice"),
						rs.getInt("unitsInStock"),
						rs.getInt("unitsOnOrder"),
						rs.getInt("reorderLevel"),
						rs.getInt("discontinued"),
						rs.getString("picture")));
			}
			DBConn.close(st, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtos;
	}

	// �������̵� = ��ӹ��� ������ �ٽ� �����ؼ� ����Ѵ�.
	public ProductDto select(String productId) {

		ProductDto dtos = null;
		Connection con = DBConn.getConnection();
		String sql = String.format("select * from PRODUCTS where productId='%s'",
				productId);
		System.out.println(sql);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				dtos = (new ProductDto(rs.getInt("productId"), 
						rs.getString("productName"), 
						rs.getInt("supplierId"),
						rs.getInt("categoryId"),
						rs.getString("quantityPerUnit"),
						rs.getDouble("unitPrice"),
						rs.getInt("unitsInStock"),
						rs.getInt("unitsOnOrder"),
						rs.getInt("reorderLevel"),
						rs.getInt("discontinued"),
						rs.getString("picture")));
			}
			DBConn.close(st, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtos;
	}

}