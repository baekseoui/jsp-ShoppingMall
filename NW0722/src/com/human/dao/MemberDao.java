package com.human.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import com.human.dto.BoardProductDto;
import com.human.dto.MemberDto;
import com.human.util.DBConn;

public class MemberDao {

	public int checkId(String userid) {
		DBConn.getInstance();
		int result = 0;
		String sql = "select newID from newCustomer where newID='" + userid + "'";

		System.out.println("중복확인 sql : " + sql);

		ResultSet rs = DBConn.statementQuery(sql);

		try {
			if (rs.next()) {
				result = 1;
			} else {
				result = -1;
			}
		} catch (SQLException e) {
			e.printStackTrace();

		}

		DBConn.dbClose();
		return result;
	}

	// 회원가입
	public void insertNewJoin(String cId, String cPw, String cName, String cDate, String cPhone, String cEmail) {

		Connection conn = null;
		Statement stmt;

		// 문의내용(기본값 n) , 제목, 글쓴이, 내용, 비밀글 여부(기본값 n), 그룹네 순서(기본값 0), 그룹네 계층(기본값 0)
		String sql = "insert into newCustomer(newNum, newId, newPw, newName, newDate, newPhone, newEmail) values (SEQ_newCustomer.nextval,'%s','%s','%s','%s','%s','%s')";
		String sql1 = "insert into CUSTOMERS values('" + cId + "','no company',null,null,null,null,null,null,null,'"
				+ cPhone + "',null)";

		sql = String.format(sql, cId, cPw, cName, cDate, cPhone, cEmail);
		try {
			conn = DBConn.getInstance();
			conn.setAutoCommit(false);
			stmt = conn.createStatement();

			stmt.executeUpdate(sql);
			System.out.println(sql);

			// stmt.close(); 때문에 java.sql.SQLRecoverableException: 명령문 종료로 DB에 insert 안됨
			// 그래서 코드 삭제함
			stmt.executeUpdate(sql1);
			System.out.println(sql1);

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

	}

	public String login(String id, String pwd, MemberDto dto) {

		String result = "";
		DBConn.getInstance();
		String sql = "select NEWNAME,NEWRANK,NEWID from newCustomer where NEWID='" + id + "' AND NEWPW='" + pwd + "'";
		System.out.println("로그인확인 sql : " + sql);
		ResultSet rs = DBConn.statementQuery(sql);

		try {
			if (rs.next()) {
				dto.setNewName(rs.getString("NEWNAME"));
				dto.setNewRank(rs.getString("NEWRANK"));
				dto.setNewID(rs.getString("NEWID"));
				result = "1";
			} else {
				result = "0";
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(result);
		DBConn.dbClose();
		return result;

	}

	// 아이디 찾기 0714 민창준
	public String findID(String newName, String newEmail) {

		String newID = null;
		String sql = "select newID from newCustomer where newName='%s' and newEmail = '%s'";
		sql = String.format(sql, newName, newEmail);
		System.out.println(sql);

		Connection con = DBConn.getInstance(); // db접속
		Statement st = null;
		ResultSet rs = null;
		try {
			st = con.createStatement();
			System.out.println("1");
			rs = st.executeQuery(sql);
			System.out.println("2");
			if (rs.next()) {
				System.out.println("3");
				MemberDto dto = new MemberDto();
				System.out.println("4");

				dto.setNewID(rs.getString("newID"));
				System.out.println("5");
				System.out.println(rs.getString("newID"));

				newID = dto.getNewID();
				System.out.println("6");
			}
			DBConn.dbClose();
			System.out.println("7");
		} catch (SQLException e) {
			System.out.println("8");
			e.printStackTrace();
		}
		System.out.println("9");
		return newID;

	}

	// 비번 찾기 0714 민창준
	public String findPwd(String newID, String newName, String newEmail) {

		String newPw = null;
		String sql = "select newPw from newCustomer where newID = '%s' and newName='%s' and " + "newEmail = '%s'";
		sql = String.format(sql, newID, newName, newEmail);
		System.out.println(sql);

		Connection con = DBConn.getInstance(); // db접속
		Statement st = null;
		ResultSet rs = null;
		try {
			st = con.createStatement();
			System.out.println("1");
			rs = st.executeQuery(sql);
			System.out.println("2");
			if (rs.next()) {
				System.out.println("3");
				MemberDto dto = new MemberDto();
				System.out.println("4");

				dto.setNewPw(rs.getString("newPw"));
				System.out.println("5");
				System.out.println(rs.getString("newPw"));

				newPw = dto.getNewPw();
				System.out.println("6");
			}
			DBConn.dbClose();
			System.out.println("7");
		} catch (SQLException e) {
			System.out.println("8");
			e.printStackTrace();
		}
		System.out.println("9");
		return newPw;

	}

	public String findPwd(String newID) {

		String newPw = null;
		String sql = "select newPw from newCustomer where newID = '%s'";
		sql = String.format(sql, newID);
		System.out.println(sql);

		Connection con = DBConn.getInstance(); // db접속
		Statement st = null;
		ResultSet rs = null;
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			if (rs.next()) {
				MemberDto dto = new MemberDto();
				dto.setNewPw(rs.getString("newPw"));
				newPw = dto.getNewPw();
			}
			DBConn.dbClose();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return newPw;
	}

	// personalInfo 에서 필요한 update 쿼리 새로 만듦.
	public int update(MemberDto mDto) {

		int returnValue = 0;
		DBConn.getInstance();
		String sql = "update newCustomer set newPw='%s', newDate='%s' where NEWID='%s'";

		sql = String.format(sql, mDto.getNewPw(), getDate(), mDto.getNewID());
		System.out.println(sql);

		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}

	public String getDate() {
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat("yy/MM/dd", Locale.KOREA);
		Date currentTime = new Date();
		String mTime = mSimpleDateFormat.format(currentTime);
//			System.out.println ( mTime );

		return mTime;
	}
	

}
