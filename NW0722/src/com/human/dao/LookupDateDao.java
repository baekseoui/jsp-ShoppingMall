package com.human.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import com.human.dto.LookupDateDto;
import com.human.util.DBConn;

public class LookupDateDao {
	public ArrayList<LookupDateDto> select() {
		ArrayList<LookupDateDto> dtos =new ArrayList<>();
		
		Connection con=DBConn.getInstance();
		String sql="select * from LookupDate";
		Statement st=null;
		ResultSet rs=null;
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				if(rs.getTimestamp(4) == null) {
					dtos.add(new LookupDateDto(
							rs.getString(1),
							rs.getInt(2),
							new Date(rs.getTimestamp(3).getTime()),
							null,
							rs.getString(5)));
				}else {
					dtos.add(new LookupDateDto(
							rs.getString(1),
							rs.getInt(2),
							new Date(rs.getTimestamp(3).getTime()),
							new Date(rs.getTimestamp(4).getTime()),
							rs.getString(5)));
				}
			}
			DBConn.dbClose();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
	public ArrayList<LookupDateDto> selectDate(String listIndex,String userID) {
		ArrayList<LookupDateDto> dtos =new ArrayList<>();
		Connection con=DBConn.getInstance();
		int listInt=Integer.parseInt(listIndex);
		String sql="select * from lookupdate where customerID='"+userID+"' "
				+ "and applicationdate > (select ADD_MONTHS(SYSDATE,-"+
				listInt+") from dual)";
		Statement st=null;
		ResultSet rs=null;
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				if(rs.getTimestamp(4) == null) {
					dtos.add(new LookupDateDto(
							rs.getString(1),
							rs.getInt(2),
							new Date(rs.getTimestamp(3).getTime()),
							null,
							rs.getString(5)));
				}else {
					dtos.add(new LookupDateDto(
							rs.getString(1),
							rs.getInt(2),
							new Date(rs.getTimestamp(3).getTime()),
							new Date(rs.getTimestamp(4).getTime()),
							rs.getString(5)));
				}
			}
			DBConn.dbClose();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
	public ArrayList<LookupDateDto> selectDate(String userID) {
		ArrayList<LookupDateDto> dtos =new ArrayList<>();
		Connection con=DBConn.getInstance();
		String sql="select * from lookupdate where customerID='"+userID+"'";
		Statement st=null;
		ResultSet rs=null;
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				if(rs.getTimestamp(4) == null) {
					dtos.add(new LookupDateDto(
							rs.getString(1),
							rs.getInt(2),
							new Date(rs.getTimestamp(3).getTime()),
							null,
							rs.getString(5)));
				}else {
					dtos.add(new LookupDateDto(
							rs.getString(1),
							rs.getInt(2),
							new Date(rs.getTimestamp(3).getTime()),
							new Date(rs.getTimestamp(4).getTime()),
							rs.getString(5)));
				}
			}
			DBConn.dbClose();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
	public ArrayList<LookupDateDto> selectDate(java.util.Date date,String userID) {
		ArrayList<LookupDateDto> dtos =new ArrayList<>();
		SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd");
		String stringDate=sf.format(date);
		System.out.println(stringDate);
		Connection con=DBConn.getInstance();
		String sql="select * from LookupDate where "
				+ "applicationdate=to_timestamp('"+stringDate+"') and customerID='%s'";
		sql=String.format(sql,userID);
		Statement st=null;
		ResultSet rs=null;
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				dtos.add(new LookupDateDto(
						rs.getString(1),
						rs.getInt(2),
						new Date(rs.getTimestamp(3).getTime()),
						new Date(rs.getTimestamp(4).getTime()),
						rs.getString(5)));
			}
			DBConn.dbClose();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
	public ArrayList<LookupDateDto> selectDate(int orderID,String userId) {
		ArrayList<LookupDateDto> dtos =new ArrayList<LookupDateDto>();
		Connection con=DBConn.getInstance();
		String sql="select * from LookupDate where orderID="+orderID+" and customerID='"+userId+"'";
		Statement st=null;
		ResultSet rs=null;
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				if(rs.getTimestamp(4) == null) {
					dtos.add(new LookupDateDto(
							rs.getString(1),
							rs.getInt(2),
							new Date(rs.getTimestamp(3).getTime()),
							null,
							rs.getString(5)));
				}else {
					dtos.add(new LookupDateDto(
							rs.getString(1),
							rs.getInt(2),
							new Date(rs.getTimestamp(3).getTime()),
							new Date(rs.getTimestamp(4).getTime()),
							rs.getString(5)));
				}	
			}
			DBConn.dbClose();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
	public boolean checkOrderID(int orderID) {
		// TODO Auto-generated method stub
		boolean returnValue=false;
		ArrayList<LookupDateDto> dtos =new ArrayList<LookupDateDto>();
		Connection con=DBConn.getInstance();
		String sql="select * from LookupDate where orderID="+orderID;
		Statement st=null;
		ResultSet rs=null;
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				if(rs.getTimestamp(4) == null) {
					dtos.add(new LookupDateDto(
							rs.getString(1),
							rs.getInt(2),
							new Date(rs.getTimestamp(3).getTime()),
							null,
							rs.getString(5)));
				}else {
					dtos.add(new LookupDateDto(
							rs.getString(1),
							rs.getInt(2),
							new Date(rs.getTimestamp(3).getTime()),
							new Date(rs.getTimestamp(4).getTime()),
							rs.getString(5)));
				}
			}
			DBConn.dbClose();
			for(int i=0;i<dtos.size();i++) {
				if(dtos.get(i).getOrderID()==orderID) {
					returnValue=true;
				}else {
					returnValue=false;
				}
			}
		}catch(Exception e) {
			
		}
		return returnValue;
	}
	
	public int insert(String cid, String oid, String userAskDate, String ownerCheckDate, String sort) {
		// TODO Auto-generated method stub
		int returnValue = 0;
		DBConn.getInstance();
		
		String sql = "INSERT INTO lookupdate(customerid, orderid, applicationdate, finishdate, type)"
		+" VALUES('%s', %s, %s, %s, '%s')";
		sql = String.format(sql, cid, oid, userAskDate, ownerCheckDate, sort);
		System.out.println("####################LookUpDateDao#####################insert######################\n" + sql);
		
		returnValue = DBConn.statementUpdate(sql);

		DBConn.dbClose();
		return returnValue;
	}
}
