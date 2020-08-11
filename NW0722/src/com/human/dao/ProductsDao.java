package com.human.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.human.dto.ProductsDto;
import com.human.util.DBConn;


public class ProductsDao {
	
	
	public ArrayList<ProductsDto> select(int viewPage){
		ArrayList<ProductsDto> dtos = new ArrayList<>();
		Connection con=DBConn.getInstance();
		String sql = "select * from (select ROWNUM m, products.* from products"
				+ " where ROWNUM <= "+(viewPage*10)+" order by productID asc)"
				+ " where m >"+(viewPage*10-10);
		System.out.println(sql);
		Statement st =null;
		ResultSet rs= null;
		
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				dtos.add(new ProductsDto(rs.getInt("productID"),rs.getString("PRODUCTNAME"),
						rs.getInt("SUPPLIERID"),rs.getInt("CATEGORYID"),rs.getString("QUANTITYPERUNIT"),
						rs.getInt("UNITPRICE"),rs.getInt("UNITSINSTOCK"),rs.getInt("UNITSONORDER"),
						rs.getInt("REORDERLEVEL"),rs.getInt("DISCONTINUED")));
			}
			DBConn.dbClose();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
	
	
	public int insert(ProductsDto p) {
		int returnValue=0;
		Connection con=DBConn.getInstance();
		Statement st=null;
		
		try {
			st=con.createStatement();
			String sql = "INSERT INTO PRODUCTS "
					+"VALUES(%d,'%s',%d,%d,'%s',%f,%d,%d,%d,%d,null)";
			sql = String.format(sql,p.getProductID(),p.getProductName(),
					p.getSupplierID(),p.getCategoryID(),p.getQuantityPerUnit(),
					p.getUnitPrice(),p.getUnitsInStock(),p.getUnitsOnOrder(),
					p.getReorderLevel(),p.getDiscontinued());
			System.out.println(sql);
			returnValue = st.executeUpdate(sql);
			DBConn.dbClose();
		} catch(SQLException e) {
				e.printStackTrace();
			}
			return returnValue;
		}
	
	public int delete(String productID) {
		int returnValue=0;
		Connection con = DBConn.getInstance();;
		Statement st = null;
		try {
			st = con.createStatement();
			int id = Integer.parseInt(productID);
			String sql =  String.format("Delete products where productID=%d",id);
			System.out.println(sql);
			returnValue = st.executeUpdate(sql);
			DBConn.dbClose();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return returnValue;
	}
	/*
	 * public int productID;
	String productName;
	int supplierId;
	int categoryId;
	String quantityPerUnit;
	int unitPrice;
	int unitsInStock;
	int unitsOnOrder;
	int reorderLevel;
	int discontinued;
	 */
	public int updateAll(ProductsDto p) {//전체수정
		int returnValue=0;
		Connection con=DBConn.getInstance();
		Statement st=null;
		try {
		st = con.createStatement();
		String sql = "update products set productName='%s',supplierId=%d,categoryId=%d,quantityPerUnit='%s',unitPrice=%f,unitsInStock=%d,"
				+ "unitsOnOrder=%d, reorderLevel=%d, discontinued=%d" +"where productID=%d";
		sql = String.format(sql, p.getProductName(),p.getSupplierID(),p.getCategoryID(),p.getQuantityPerUnit(),
				p.getUnitPrice(),p.getUnitsInStock(),p.getUnitsOnOrder(),p.getReorderLevel(),p.getDiscontinued(),p.getProductID());
				System.out.println(sql);
				returnValue=st.executeUpdate(sql);
				DBConn.dbClose();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return returnValue;
	}


	public ArrayList<ProductsDto> productNameSelect(String productSearch) {
		
		ArrayList<ProductsDto> dtos = new ArrayList<>();
		Connection con=DBConn.getInstance();
//		String sql = "select * from (select ROWNUM m, products.* from products"
//				+ " where ROWNUM <= "+(page*10)+" and productName ="+productSearch+"order by productID asc)"
//				+ " where m >"+(page*10-10);
		
		String sql = String.format("select * from products where productName like '%s' ",productSearch); 
		
		System.out.println(sql);
		Statement st =null;
		ResultSet rs= null;
		
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				dtos.add(new ProductsDto(rs.getInt("productID"),rs.getString("PRODUCTNAME"),
						rs.getInt("SUPPLIERID"),rs.getInt("CATEGORYID"),rs.getString("QUANTITYPERUNIT"),
						rs.getInt("UNITPRICE"),rs.getInt("UNITSINSTOCK"),rs.getInt("UNITSONORDER"),
						rs.getInt("REORDERLEVEL"),rs.getInt("DISCONTINUED")));
			}
			DBConn.dbClose();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}


	public ArrayList<ProductsDto> productIDSelect(String search) {
		ArrayList<ProductsDto> dtos = new ArrayList<>();
		Connection con=DBConn.getInstance();
//		String sql = "select * from (select ROWNUM m, products.* from products"
//				+ " where ROWNUM <= "+(page*10)+" and productName ="+productSearch+"order by productID asc)"
//				+ " where m >"+(page*10-10);
		
		String sql = String.format("select * from products where productID = %s ",search); 
		
		System.out.println(sql);
		Statement st =null;
		ResultSet rs= null;
		
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				dtos.add(new ProductsDto(rs.getInt("productID"),rs.getString("PRODUCTNAME"),
						rs.getInt("SUPPLIERID"),rs.getInt("CATEGORYID"),rs.getString("QUANTITYPERUNIT"),
						rs.getInt("UNITPRICE"),rs.getInt("UNITSINSTOCK"),rs.getInt("UNITSONORDER"),
						rs.getInt("REORDERLEVEL"),rs.getInt("DISCONTINUED")));
			}
			DBConn.dbClose();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}


	public ArrayList<ProductsDto> categoryIdSelect(String search) {
		ArrayList<ProductsDto> dtos = new ArrayList<>();
		Connection con=DBConn.getInstance();
//		String sql = "select * from (select ROWNUM m, products.* from products"
//				+ " where ROWNUM <= "+(page*10)+" and productName ="+productSearch+"order by productID asc)"
//				+ " where m >"+(page*10-10);
		
		String sql = String.format("select * from products where categoryId = %s ",search); 
		
		System.out.println(sql);
		Statement st =null;
		ResultSet rs= null;
		
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				dtos.add(new ProductsDto(rs.getInt("productID"),rs.getString("PRODUCTNAME"),
						rs.getInt("SUPPLIERID"),rs.getInt("CATEGORYID"),rs.getString("QUANTITYPERUNIT"),
						rs.getInt("UNITPRICE"),rs.getInt("UNITSINSTOCK"),rs.getInt("UNITSONORDER"),
						rs.getInt("REORDERLEVEL"),rs.getInt("DISCONTINUED")));
			}
			DBConn.dbClose();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
}
	
	//칼럼부분 수정이 필요할 경우 이곳에 코딩
	
	
	
	
	
	
	
