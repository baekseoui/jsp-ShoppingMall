package com.human.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.human.dto.ClientCheckDto;
import com.human.util.DBConn;

public class ClientCheckDao {
	// insert
		public int insert(ClientCheckDto insert) {
			int returnValue=0;
			Connection con=DBConn.getInstance();
			Statement st=null;
			System.out.println("insert진입");
			try {
				st=con.createStatement();
				String sql="INSERT INTO SUPPLIERS "
				+"VALUES('PARK1',13,124.2,SYSDATE)";
				sql=String.format("INSERT INTO SUPPLIERS "
						+"VALUES(SUPPLIERS_seq.nextval,'%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s')",
						insert.getCompanyName(),
						insert.getPhone(),
						insert.getAddress(),
						insert.getContactName(),
						insert.getContactTitle(),
						insert.getCity(),
						insert.getRegion(),
						insert.getPostalCode(),
						insert.getCountry(),
						insert.getFax(),
						insert.getHomepage()
						);
				System.out.println(sql);
				returnValue=st.executeUpdate(sql);
				DBConn.dbClose();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return returnValue;
		
		}

		
		//update
		public int update(ClientCheckDto updateId) { 
			int returnvalue = 0;
			DBConn.getInstance();
			String sql = "";
			sql = "update SUPPLIERS set CompanyName='%s',ContactName='%s',"
					+ "ContactTitle='%s',Address='%s',City='%s',Region='%s'"
					+ ",Postalcode='%s',Country='%s',Phone='%s',Fax='%s',Homepage='%s'"
					+ " where SupplierID = %s";
			sql = String.format(sql,
					updateId.getCompanyName(),
					updateId.getPhone(),
					updateId.getAddress(),
					updateId.getContactName(),
					updateId.getContactTitle(),
					updateId.getCity(),
					updateId.getRegion(),
					updateId.getPostalCode(),
					updateId.getCountry(),
					updateId.getFax(),
					updateId.getHomepage(),
					updateId.getSupplierId());
			System.out.println(sql);
			returnvalue = DBConn.statementUpdate(sql);
			DBConn.dbClose();
			return returnvalue;
		}

		
		// delete
		public int delete(String id) {
			int returnvalue = 0;
			DBConn.getInstance();
			String sql = "delete from SUPPLIERS where SupplierID = %s";
			System.out.println(sql);
			sql = String.format(sql,id);
			System.out.println(sql);
			System.out.println(id);
			returnvalue = DBConn.statementUpdate(sql);
			DBConn.dbClose();
			return returnvalue;
		}
		
		
		
			
		// Select
		public ArrayList<ClientCheckDto> select(int viewPage){
			
			ArrayList<ClientCheckDto> dtos = new ArrayList<ClientCheckDto>();
			DBConn.getInstance();
			
			String sql = "select * from (select ROWNUM m, supplierId, COMPANYNAME, "
					+ "CONTACTNAME, CONTACTTITLE, ADDRESS, CITY, REGION, POSTALCODE,"
					+ " COUNTRY, PHONE, FAX, Homepage from SUPPLIERS"
					+ " where ROWNUM <="+(viewPage*10)+" order by supplierId asc)where m >"+(viewPage*10-10);
//			String sql ="select * from suppliers";
			ResultSet rs = DBConn.statementQuery(sql);
			
			try {
				
				while(rs.next()) {
				
					ClientCheckDto dto= new ClientCheckDto();
					
					dto.setSupplierId(rs.getString("supplierId"));
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
					dto.setHomepage(rs.getString("homepage"));
					
					
					dtos.add(dto);
					
				}
				
				DBConn.dbClose();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			return dtos;
		}


		public ArrayList<ClientCheckDto> clientCheck_name_select(String search) {
			ArrayList<ClientCheckDto> dtos = new ArrayList<ClientCheckDto>();
			DBConn.getInstance();
			System.out.println(search);
			String sql = String.format("select * from SUPPLIERS where contactName='%s'",search);
			System.out.println(sql);
			ResultSet rs = DBConn.statementQuery(sql);
			
			try {
				while(rs.next()) {
					ClientCheckDto dto= new ClientCheckDto();
				
					dto.setSupplierId(rs.getString("supplierId"));
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
					dto.setHomepage(rs.getString("homepage"));
					
					
					dtos.add(dto);
					
				}
				DBConn.dbClose();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return dtos;

		}


		public ArrayList<ClientCheckDto> clientCheck_id_select(String search) {
			ArrayList<ClientCheckDto> dtos = new ArrayList<ClientCheckDto>();
			DBConn.getInstance();
			System.out.println(search);
			String sql = String.format("select * from SUPPLIERS where SupplierID = %s",search);
			System.out.println(sql);
			ResultSet rs = DBConn.statementQuery(sql);
			
			try {
				while(rs.next()) {
					ClientCheckDto dto= new ClientCheckDto();
				
					dto.setSupplierId(rs.getString("supplierId"));
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
					dto.setHomepage(rs.getString("homepage"));
					
					
					dtos.add(dto);
					
				}
				DBConn.dbClose();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return dtos;

		}
	
}
