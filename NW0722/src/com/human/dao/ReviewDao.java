package com.human.dao;



import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.human.dto.BoardDto;
import com.human.dto.FileDto;
import com.human.dto.ReviewDto;

import com.human.util.DBConn;

public class ReviewDao {

	//내가 쓴 상품평 보기 목록
	public ArrayList<ReviewDto> reviewSelect(String loginID) {
		ArrayList<ReviewDto> rDtos =new ArrayList<ReviewDto>();
		Connection con=DBConn.getConnection();
		Statement st=null;
		ResultSet rs=null;
		String sql="select b.boardNum, o.orderid,o.customerid,od.productid ,p.productname,p.picture, b.boardtitle,b.boardcontent,b.boarddate " 
				+"from orders o,orderdetails od,products p,board b "
				+"where o.orderid=od.orderid and od.productid=p.productid "
				+"and b.productid=od.productid and o.customerid='%s'and b.customerid='%s'and b.orderid=o.orderid order by b.boardnum desc";
			
		sql=String.format(sql, loginID,loginID);
		System.out.println(sql);
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				ReviewDto rDto=new ReviewDto();
				rDto.setBoardNum(rs.getInt("boardNum"));
				rDto.setProductName(rs.getString("productName"));
				rDto.setPicture(rs.getString("picture"));
				rDto.setCustomerID(rs.getString("customerId"));
				rDto.setBoardContent(rs.getString("boardcontent"));
				rDto.setBoardDate(rs.getString("boarddate"));
				rDto.setBoardTitle(rs.getString("boardtitle"));
				rDto.setOrderID(rs.getInt("orderid"));
				rDto.setProductID(rs.getInt("productid"));

				
				rDtos.add(rDto);
			}
			DBConn.dbClose();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return rDtos;
	}
	
public ArrayList<ReviewDto> reviewFileSelect(String loginID) {
		
		ArrayList<ReviewDto> rDtos =new ArrayList<ReviewDto>();
		Connection con=DBConn.getConnection();
		Statement st=null;
		ResultSet rs=null;
		String sql="select b.boardNum, o.orderid,o.customerid,od.productid ,p.productname,p.picture,f.filenewname, b.boardtitle,b.boardcontent,b.boarddate " 
				+"from orders o,orderdetails od,products p,board b,file_board f "
				+"where o.orderid=od.orderid and od.productid=p.productid "
				+"and b.productid=od.productid and o.customerid='%s'and b.customerid='%s'and b.orderid=o.orderid and b.boardnum=f.boardnum";
			
		sql=String.format(sql, loginID,loginID);
		System.out.println(sql);
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				ReviewDto rDto=new ReviewDto();
				rDto.setBoardNum(rs.getInt("boardNum"));
				rDto.setProductName(rs.getString("productName"));
				rDto.setPicture(rs.getString("picture"));
				rDto.setCustomerID(rs.getString("customerId"));
				rDto.setBoardContent(rs.getString("boardcontent"));
				rDto.setBoardDate(rs.getString("boarddate"));
				rDto.setBoardTitle(rs.getString("boardtitle"));
				rDto.setOrderID(rs.getInt("orderid"));
				rDto.setProductID(rs.getInt("productid"));
				rDto.setFileNewName(rs.getString("fileNewName"));
				
				rDtos.add(rDto);
			}
			DBConn.dbClose();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return rDtos;
	
	
	}
	
//productdetails리뷰	
	public ArrayList<ReviewDto> reviewListSelect(String productID) {
		ArrayList<ReviewDto> rDtos =new ArrayList<ReviewDto>();
		Connection con=DBConn.getConnection();
		Statement st=null;
		ResultSet rs=null;
		String sql="select b.boardnum, p.productName,p.picture,b.customerid,b.boardcontent,b.boarddate, b.productid " 
				+"from products p,board b " 
				+"where b.productid=p.productid and b.productid=%s and b.boardEtc1='상품평'";
		sql=String.format(sql, productID);
		System.out.println(sql);
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				ReviewDto rDto=new ReviewDto();
				rDto.setProductName(rs.getString("productName"));
				rDto.setPicture(rs.getString("picture"));
				rDto.setCustomerID(rs.getString("customerId"));
				rDto.setBoardContent(rs.getString("boardcontent"));
				rDto.setBoardDate(rs.getString("boarddate"));
				rDto.setProductID(rs.getInt("productid"));
				rDto.setBoardNum(rs.getInt("boardNum"));
				rDtos.add(rDto);
			}
			DBConn.dbClose();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return rDtos;
	}
	
	
	public ArrayList<ReviewDto> reviewListFileSelect(String productID) {
		ArrayList<ReviewDto> rDtos =new ArrayList<ReviewDto>();
		Connection con=DBConn.getConnection();
		Statement st=null;
		ResultSet rs=null;
		String sql="select b.boardnum, p.productName,p.picture,b.customerid,b.boardcontent,b.boarddate, b.productid,f.filenewname " 
				+"from products p,board b, file_board f "
				+"where b.productid=p.productid and b.productid=%s and b.boardnum=f.boardnum ";
		sql=String.format(sql, productID);
		System.out.println(sql);
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				ReviewDto rDto=new ReviewDto();
				rDto.setProductName(rs.getString("productName"));
				rDto.setPicture(rs.getString("picture"));
				rDto.setCustomerID(rs.getString("customerId"));
				rDto.setBoardContent(rs.getString("boardcontent"));
				rDto.setBoardDate(rs.getString("boarddate"));
				rDto.setProductID(rs.getInt("productid"));
				rDto.setFileNewName(rs.getString("fileNewName"));
				rDto.setBoardNum(rs.getInt("boardNum"));
				rDtos.add(rDto);
			}
			DBConn.dbClose();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return rDtos;
	}
	
	



	//상품평 수정하기
	public int ReviewUpdate(String boardContent,String boardNum) {
		int returnValue=0;
		Connection con=DBConn.getConnection();
		Statement st=null;
		ResultSet rs=null;
		String sql="UPDATE board set boardcontent='%s', boardDate=(SYSDATE) where boardNum=%s";
		sql=String.format(sql,boardContent,boardNum );
		System.out.println(sql);
		returnValue=DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}
	

	public ReviewDto reviewContentSelect(String loginId,int boardNum) {
		ReviewDto rDto=new ReviewDto();
		Connection con=DBConn.getConnection();
		Statement st=null;
		ResultSet rs=null;
		String sql="select b.boardNum, o.orderid,o.customerid,od.productid ,p.productname,p.picture, b.boardtitle,b.boardcontent,b.boarddate " 
				+"from orders o,orderdetails od,products p,board b "
				+"where o.orderid=od.orderid and od.productid=p.productid "
				+"and b.productid=od.productid and o.customerid='%s' "
				+"and b.boardnum=%d ";
		sql=String.format(sql,loginId, boardNum);
		System.out.println(sql);
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				rDto.setBoardNum(rs.getInt("boardNum"));
				rDto.setProductName(rs.getString("productName"));
				rDto.setPicture(rs.getString("picture"));
				rDto.setCustomerID(rs.getString("customerId"));
				rDto.setBoardContent(rs.getString("boardcontent"));
				rDto.setBoardDate(rs.getString("boarddate"));
				rDto.setBoardTitle(rs.getString("boardtitle"));
				rDto.setOrderID(rs.getInt("orderid"));
				rDto.setProductID(rs.getInt("productid"));
			}
			DBConn.dbClose();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return rDto;
	}

	//상품평 삭제
	public int ReviewDelete(int boardNum) {
		int returnValue = 0;
		DBConn.getInstance();
		String sql = "delete board where boardNum=%d ";
		sql = String.format(sql, boardNum);
		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}
	
	
	
	
	
	
	//상품리뷰쓰기
	public int ReviewInsert(String loginId, String boardContent, String orderID, String productID, ArrayList<FileDto> dtos) {
		int returnValue = 0;
		Connection conn = null;
		Statement stmt;
		String sql1;
		String sql = "insert into "
				+"board(boardNum,customerID,boardDate,BoardContent,orderid,productid,boardDel,boardetc1) "  
				+"values(SEQ_BOARD.nextval,'%s',SYSDATE,'%s',%s,%s,'N','상품평')";
		sql = String.format(sql,loginId,boardContent, orderID,productID);
		try {
			conn=DBConn.getInstance();
			conn.setAutoCommit(false); 
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			
			for(FileDto f : dtos) {
				String newName = f.getFileNewName();
				String orgName = f.getFileOrgName();
				String size = f.getFileSize();
				if(newName!=null) {
					sql1= "insert into FILE_BOARD(fileNo, boardNum, fileOrgName, fileNewName, fileSize) values(SEQ_BOARD_FILE.nextval,SEQ_BOARD.currval,'"+orgName+"', '"+newName+"','"+size+"')";
					System.out.println(sql1);
					stmt.executeUpdate(sql1);
				}
			}
			
			stmt.close(); 
			conn.commit(); 
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		} 
		

		DBConn.dbClose();
		return returnValue;
	}
	
	
	//상품주문내역 출력
	public ArrayList<ReviewDto> OrderSelect(String loginID) {
		ArrayList<ReviewDto> rDtos =new ArrayList<ReviewDto>();
		Connection con=DBConn.getConnection();
		Statement st=null;
		ResultSet rs=null;
		String sql="select o.orderid,o.customerid,o.orderdate,od.productid,p.productname,p.picture "
				+"from orders o, orderdetails od, products p "  
				+"where od.productid=p.productid  and o.orderid=od.orderid and o.customerid='%s' "
				+"order by o.orderdate desc";
		sql=String.format(sql, loginID);
		System.out.println(sql);
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()) {
				ReviewDto rDto=new ReviewDto();
				rDto.setOrderID(rs.getInt("orderID"));
				rDto.setCustomerID(rs.getString("customerId"));
				rDto.setProductName(rs.getString("productName"));
				rDto.setPicture(rs.getString("picture"));
				rDto.setOrderDate(rs.getString("orderDate"));
				rDto.setProductID(rs.getInt("productID"));
				rDtos.add(rDto);
			}

			DBConn.dbClose();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return rDtos;
	}

	
	

	
}

	
		





		
