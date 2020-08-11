package com.human.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.human.dto.CustomersDto;

import com.human.util.DBConn;


public class CustomersDao {
	
	// insert
	public int insert(String insert[]) {
		int returnvalue = 0;
		DBConn.getInstance();
		String sql = "insert into Customers values ('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s')";
		sql=String.format(sql,insert[0],insert[1],insert[2],insert[3],insert[4]
				,insert[5],insert[6],insert[7],insert[8],insert[9],insert[10]);
		
		returnvalue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnvalue;
	}

	
	//update
	public int update(String updateId, String insert[]) { 
		int returnvalue = 0;
		DBConn.getInstance();
		String sql = "";
		sql = "update Customers set CompanyName='%s',ContactName='%s',"
				+ "ContactTitle='%s',Address='%s',City='%s',Region='%s'"
				+ ",Postalcode='%s',Country='%s',Phone='%s',Fax='%s'"
				+ " where CustomerId = '%s'";
		sql = String.format(sql,insert[0],insert[1],insert[2],insert[3],insert[4]
				,insert[5],insert[6],insert[7],insert[8],insert[9],updateId);
		returnvalue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnvalue;
	}

	
	// delete
	public int delete(String id) {
		int returnvalue = 0;
		DBConn.getInstance();
		String sql = "delete from Customers where CustomerId = '%s'";
		sql = String.format(sql,id);
		returnvalue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnvalue;
	}
	
	
	
		
	// Select
	public ArrayList<CustomersDto> select(int viewPage){
		
		ArrayList<CustomersDto> dtos = new ArrayList<CustomersDto>();
		DBConn.getInstance();
	
		String sql = "select * from (select ROWNUM m, CUSTOMERID, COMPANYNAME, "
				+ "CONTACTNAME, CONTACTTITLE, ADDRESS, CITY, REGION, POSTALCODE,"
				+ " COUNTRY, PHONE, FAX from CUSTOMERS"
				+ " where ROWNUM <="+(viewPage*10)+" order by CustomerId asc)where m >"+(viewPage*10-10);
		
		ResultSet rs = DBConn.statementQuery(sql);
		
		try {
			while(rs.next()) {
				CustomersDto dto= new CustomersDto();
			
				dto.setCustomerID(rs.getString("CustomerId"));
				dto.setCompanyName(rs.getString("CompanyName"));
				dto.setContactName(rs.getString("contactName"));	
				dto.setContactTitle(rs.getString("ContactTitle"));
				dto.setAddress(rs.getString("Address"));
				dto.setCity(rs.getString("City"));
				dto.setRegion(rs.getString("Region"));
				dto.setPostalCode(rs.getString("Postalcode"));	
				dto.setCountry(rs.getString("Country"));
				dto.setPhone(rs.getString("Phone"));
				dto.setFax(rs.getString("Fax"));
				
				
				dtos.add(dto);
				
			}
			DBConn.dbClose();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dtos;
	}


	public ArrayList<CustomersDto> customer_name_select(String search) {
		ArrayList<CustomersDto> dtos = new ArrayList<CustomersDto>();
		DBConn.getInstance();
	
		String sql = String.format("select * from customers where contactName = '%s' ",search);
		System.out.println(sql);
		ResultSet rs = DBConn.statementQuery(sql);
		
		try {
			while(rs.next()) {
				CustomersDto dto= new CustomersDto();
			
				dto.setCustomerID(rs.getString("CustomerId"));
				dto.setCompanyName(rs.getString("CompanyName"));
				dto.setContactName(rs.getString("contactName"));	
				dto.setContactTitle(rs.getString("ContactTitle"));
				dto.setAddress(rs.getString("Address"));
				dto.setCity(rs.getString("City"));
				dto.setRegion(rs.getString("Region"));
				dto.setPostalCode(rs.getString("Postalcode"));	
				dto.setCountry(rs.getString("Country"));
				dto.setPhone(rs.getString("Phone"));
				dto.setFax(rs.getString("Fax"));
				
				
				dtos.add(dto);
				
			}
			DBConn.dbClose();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dtos;

	}


	public ArrayList<CustomersDto> customer_id_select(String search) {
		ArrayList<CustomersDto> dtos = new ArrayList<CustomersDto>();
		DBConn.getInstance();
	
		String sql = String.format("select * from customers where customerId = '%s' ",search);
		System.out.println(sql);
		ResultSet rs = DBConn.statementQuery(sql);
		
		try {
			while(rs.next()) {
				CustomersDto dto= new CustomersDto();
			
				dto.setCustomerID(rs.getString("CustomerId"));
				dto.setCompanyName(rs.getString("CompanyName"));
				dto.setContactName(rs.getString("contactName"));	
				dto.setContactTitle(rs.getString("ContactTitle"));
				dto.setAddress(rs.getString("Address"));
				dto.setCity(rs.getString("City"));
				dto.setRegion(rs.getString("Region"));
				dto.setPostalCode(rs.getString("Postalcode"));	
				dto.setCountry(rs.getString("Country"));
				dto.setPhone(rs.getString("Phone"));
				dto.setFax(rs.getString("Fax"));
				
				
				dtos.add(dto);
				
			}
			DBConn.dbClose();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dtos;

	}
	public int update(String companyName, String customerID) {

		int returnValue = 0;
		DBConn.getInstance();
		String sql = "update customers " + "set companyName='%s' " + "where customerID='%s'";

		sql = String.format(sql, companyName, customerID);
		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}
	public int update(CustomersDto dto) {

		int returnValue = 0;
		DBConn.getInstance();
		String sql = "update customers " + "set companyName='%s',contactName='%s',"
				+ "contactTitle='%s',address='%s', "
				+ "city='%s',region='%s', "
				+ "postalCode='%s',country='%s', "
				+ "phone='%s',fax='%s' "
				+ "where customerID='%s'";

		sql = String.format(sql, dto.getCompanyName(), dto.getContactName()
				,dto.getContactTitle(), dto.getAddress(), dto.getCity()
				,dto.getRegion(), dto.getPostalCode(), dto.getCountry()
				,dto.getPhone(), dto.getFax(), dto.getCustomerID());
		System.out.println(sql);
		
		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}

//	public int delete(String customerID) {
//		int returnValue = 0;
//		DBConn.getInstance();
//		String sql = "delete customers " + "where customerID='%s'";
//		sql = String.format(sql, customerID);
//		returnValue = DBConn.statementUpdate(sql);
//		DBConn.dbClose();
//		return returnValue;
//	}

	public ArrayList<CustomersDto> select() {
		ArrayList<CustomersDto> dtos = new ArrayList<CustomersDto>();
		DBConn.getInstance();
		String sql = "select * from customers ";
		ResultSet rs = DBConn.statementQuery(sql);
		try {
			while (rs.next()) {
				CustomersDto dto = new CustomersDto();
				dto.setCustomerID(rs.getString("customerID"));
				dto.setCompanyName(rs.getString("companyName"));
				dto.setContactName(rs.getString("contactName"));
				dto.setContactTitle(rs.getString("contactTitle"));
				dto.setAddress(rs.getString("address"));
				dto.setCity(rs.getString("city"));
				dto.setRegion(rs.getString("region"));
				dto.setPostalCode(rs.getString("postalCode"));
				dto.setCountry(rs.getString("country"));
				dto.setPhone(rs.getString("phone"));
				dto.setFax(rs.getString("fax"));

				dtos.add(dto);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dtos;
	}

	public ArrayList<CustomersDto> select(String customerID) {
		ArrayList<CustomersDto> dtos = new ArrayList<CustomersDto>();
		DBConn.getInstance();
		String sql = "select * from customers where customerID='%s' ";
		sql=String.format(sql, customerID);
		ResultSet rs = DBConn.statementQuery(sql);
		try {
			while (rs.next()) {
				CustomersDto dto = new CustomersDto();
				dto.setCustomerID(rs.getString("customerID"));
				dto.setCompanyName(rs.getString("companyName"));
				dto.setContactName(rs.getString("contactName"));
				dto.setContactTitle(rs.getString("contactTitle"));
				dto.setAddress(rs.getString("address"));
				dto.setCity(rs.getString("city"));
				dto.setRegion(rs.getString("region"));
				dto.setPostalCode(rs.getString("postalCode"));
				dto.setCountry(rs.getString("country"));
				dto.setPhone(rs.getString("phone"));
				dto.setFax(rs.getString("fax"));

				dtos.add(dto);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dtos;
	}
}
		


