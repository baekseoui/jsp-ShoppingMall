package com.human.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import com.human.dto.EmployeesDto;
import com.human.util.DBConn;

import com.human.util.DBInput;

public class EmployeesDao {
	
	public int delete(String name) {
		int returnValue=0;
		Connection con=DBConn.getConnection();
		Statement st=null;
		
		try {
			st=con.createStatement();
			String sql=String.format(
					"delete employees where employeeid='%s'"
					,name);
			System.out.println(sql);
			returnValue=st.executeUpdate(sql);
			DBConn.close(st);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return returnValue;
	}
	
	
	public int insert(EmployeesDto dto) {
		int returnValue=0;
		Connection con=DBConn.getConnection();
		Statement st=null;
		
		try {
			con.setAutoCommit(false);
			st=con.createStatement();
			
			String sql=String.format("insert into employees values(%d,'%s','%s','%s','%s'"
					+ ",TO_DATE('%s','YYYY-MM-DD HH24:MI:SS')"
					+ ",TO_DATE('%s','YYYY-MM-DD HH24:MI:SS')"
				
					+ ",'%s','%s','%s','%s','%s','%s','%s','%s','%s',%d,'%s')",
					dto.getEmployeeid(),dto.getLastname(),dto.getFirstname()
					,dto.getTitle(),dto.getTitleofcourtesy()
					,DBInput.dateToString(dto.getBirthdate()),DBInput.dateToString(dto.getHiredate())
					,dto.getAddress(),dto.getCity(),dto.getRegion(),dto.getPostalcode()
					,dto.getCountry(),dto.getHomephone(),dto.getExtension(),dto.getPhoto()
					,dto.getNotes(),dto.getReportsto(),dto.getPhotopath());
			String sql1 = "insert into newCustomer(newNum, newId, newPw, newName, newDate, newPhone , newRank) "
					+ "values (SEQ_newCustomer.nextval,'%s','%s','%s',TO_DATE('%s','YYYY-MM-DD HH24:MI:SS'),'%s','ADMIN')";
			sql1=String.format(sql1, dto.getEmployeeid(), dto.getEmployeeid(), 
					dto.getFirstname(), DBInput.dateToString(dto.getBirthdate()), dto.getExtension());
			
			returnValue=st.executeUpdate(sql);
			System.out.println(sql);
			
			st.executeUpdate(sql1);
			System.out.println(sql1);
			
			con.commit();
			DBConn.close(st);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return returnValue;
	}
	
	public ArrayList<EmployeesDto> select(int viewPage){
		ArrayList<EmployeesDto> dtos = new ArrayList<>();
		
		Connection con=DBConn.getConnection();
		String sql= "select * from (select ROWNUM m, employees.* from employees"
				+ " where ROWNUM <="+(viewPage*10)+" order by employeeId asc)where m >"+(viewPage*10-10)+"";
		Statement st=null;
		ResultSet rs=null;
	
		try {
			
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				dtos.add(new EmployeesDto(
						rs.getInt("employeeid"),rs.getString("lastname"),rs.getString("firstname"),
						rs.getString("title"),rs.getString("titleofcourtesy"),
						rs.getDate("birthdate"),
						rs.getDate("hiredate"),
						rs.getString("address"),rs.getString("city"),rs.getString("region"),
						rs.getString("postalcode"),rs.getString("country"),rs.getString("homephone"),
						rs.getString("extension"),rs.getString("Photo"),rs.getString("notes"),rs.getInt("reportsto"),
						rs.getString("photopath")));
				}
				DBConn.close(st,rs);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return dtos;
	}
	
	public ArrayList<EmployeesDto> selectid(String num){
		ArrayList<EmployeesDto> dtos = new ArrayList<>();
		
		Connection con=DBConn.getConnection();
		String sql= "select * from employees where employeeid="+num;
		Statement st=null;
		ResultSet rs=null;
	
		try {
			
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				dtos.add(new EmployeesDto(
						rs.getInt("employeeid"),rs.getString("lastname"),rs.getString("firstname"),
						rs.getString("title"),rs.getString("titleofcourtesy"),
						rs.getDate("birthdate"),
						rs.getDate("hiredate"),
						rs.getString("address"),rs.getString("city"),rs.getString("region"),
						rs.getString("postalcode"),rs.getString("country"),rs.getString("homephone"),
						rs.getString("extension"),rs.getString("Photo"),rs.getString("notes"),rs.getInt("reportsto"),
						rs.getString("photopath")));
				}
				DBConn.close(st,rs);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return dtos;
	}
	
	public ArrayList<EmployeesDto> selectname(String num){
		ArrayList<EmployeesDto> dtos = new ArrayList<>();
		
		Connection con=DBConn.getConnection();
		String sql= "select * from employees where lastname='"+num+"'";
		Statement st=null;
		ResultSet rs=null;
	
		try {
			
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				dtos.add(new EmployeesDto(
						rs.getInt("employeeid"),rs.getString("lastname"),rs.getString("firstname"),
						rs.getString("title"),rs.getString("titleofcourtesy"),
						rs.getDate("birthdate"),
						rs.getDate("hiredate"),
						rs.getString("address"),rs.getString("city"),rs.getString("region"),
						rs.getString("postalcode"),rs.getString("country"),rs.getString("homephone"),
						rs.getString("extension"),rs.getString("Photo"),rs.getString("notes"),rs.getInt("reportsto"),
						rs.getString("photopath")));
				}
				DBConn.close(st,rs);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return dtos;
	}



	public int update(String updateDataemployeeid, String updateDatalastname, String updateDatafirstname,
			String updateDatatitle, String updateDatatitleofcourtesy, String updateDataaddress, String updateDatacity,
			String updateDataregion, String updateDatapostalcode, String updateDatacountry,
			String updateDatahomephone, String updateDataextension, String updateDataphoto, String updateDatanotes,
			String updateDatareportsto, String updateDataphotopath) {
		// TODO Auto-generated method stub
		int returnValue=0;
		Connection con=DBConn.getConnection();
		Statement st=null;
		
		try {
			st=con.createStatement();
	
			String sql=String.format("update employees set lastname='%s',firstname='%s',title='%s',titleofcourtesy='%s'"
					+ ",address='%s',city='%s',region='%s',postalcode='%s',country='%s'"
					+ ",homephone='%s',extension='%s',photo='%s',notes='%s',reportsto=%s,photopath='%s' where employeeid=%s"
					,updateDatalastname,updateDatafirstname,updateDatatitle,updateDatatitleofcourtesy
					,updateDataaddress,updateDatacity,updateDataregion,updateDatapostalcode
					,updateDatacountry,updateDatahomephone,updateDataextension,updateDataphoto
					,updateDatanotes,updateDatareportsto,updateDataphotopath,updateDataemployeeid);
			System.out.println(sql);
			returnValue=st.executeUpdate(sql);
			DBConn.close(st);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return returnValue;
		
		
		
	}
	

	
}
		


