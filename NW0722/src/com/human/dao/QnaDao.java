package com.human.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.human.dto.QnaDto;
import com.human.util.DBConn;


public class QnaDao {

	// insert
	public int insert(QnaDto dto) {
		int returnValue = 0;
		DBConn.getInstance();
		String sql = "insert into board values" + "(%d,'%s','%s','%s','%s','%s','%s',%d,'%s','%s',%d,%d,%d,'%s','%s')";
		sql = String.format(sql, dto.getBoardNum(), dto.getBoardOption(), dto.getBoardAnswered(), dto.getBoardTitle(),
				dto.getCustomerID(), dto.getBoardDate(), dto.getBoardContent(), dto.getBoardHit(),
				dto.getBoardCondition(), dto.getOrderID(), dto.getBoardGroup(), dto.getBoardStep(),
				dto.getBoardIndent(), dto.getBoardDel(), dto.getBoardEtc1());
		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}

	// update
	public int update(String bContent, int bNum) {
		int returnValue = 0;
		DBConn.getInstance();
		String sql = "update board set boardContent='%s' where boardNum=%d";
		sql = String.format(sql, bContent, bNum);
		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}

	// delete 삭제여부 0삭제1삭제보류
	public int delete(String bDel, int bNum) {
		int returnValue = 0;
		DBConn.getInstance();
		String sql = "update board set boardDel='%s' where bNum=%d";
		sql = String.format(sql, bDel, bNum);
		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}

	// 게시글 삭제
	public int delete1(int bNum) {
		int returnValue = 0;
		DBConn.getInstance();
		String sql = "delete board where boardNum=%d";
		sql = String.format(sql, bNum);
		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}

	// select
	public ArrayList<QnaDto> select() {
		ArrayList<QnaDto> dtos = new ArrayList<QnaDto>();
		DBConn.getInstance();
		String sql = "select * from board";
		ResultSet rs = DBConn.statementQuery(sql);
		try {
			while (rs.next()) {
				QnaDto dto = new QnaDto();
				dto.setBoardNum(rs.getInt("BoardNum"));
				dto.setBoardOption(rs.getString("BoardOption"));
				dto.setBoardAnswered(rs.getString("BoardAnswered"));
				dto.setBoardTitle(rs.getString("BoardTitle"));
				dto.setCustomerID(rs.getString("CustomerID"));
				dto.setBoardDate(rs.getString("BoardDate"));
				dto.setBoardContent(rs.getString("BoardContent"));
				dto.setBoardHit(rs.getInt("BoardHit"));
				dto.setBoardCondition(rs.getString("BoardCondition"));
				dto.setOrderID(rs.getInt("orderID"));
				dto.setBoardGroup(rs.getInt("BoardGroup"));
				dto.setBoardStep(rs.getInt("BoardStep"));
				dto.setBoardIndent(rs.getInt("BoardIndent"));
				dto.setBoardDel(rs.getString("BoardDel"));
				dto.setBoardEtc1(rs.getString("BoardEtc1"));
				dtos.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dtos;

	}

	public ArrayList<QnaDto> select(int viewPage) {
		ArrayList<QnaDto> dtos = new ArrayList<QnaDto>();
		DBConn.getInstance();
		
		/*
		 * String sql ="select * from board where boardNum in (select BoardNum from " +
		 * "(select ROWNUM m,boardGroup from board order by m desc) " +
		 * "where m>"+(viewPage*10-10)+" and m<="+(viewPage*10)+") " +
		 * "order by boardGroup desc,boardStep asc";
		 */
		
		String sql ="select * "
				+ "from (select ROWNUM as rnum, board.* from "
				+ "(select * from board where boardEtc1 not like '공지사항' " + 
				"				and boardEtc1 not like '상품평' order by boardgroup desc, boardStep) board) "
				+ "where rnum > "+(viewPage*10-10)+" and rnum <="+(viewPage*10);
				
		System.out.println(sql);
		ResultSet rs = DBConn.statementQuery(sql);
		

		try {
			while (rs.next()) {
				QnaDto dto = new QnaDto();

				dto.setBoardNum(rs.getInt("BoardNum"));
				dto.setBoardOption(rs.getString("BoardOption"));
				dto.setBoardAnswered(rs.getString("BoardAnswered"));
				dto.setBoardTitle(rs.getString("BoardTitle"));
				dto.setCustomerID(rs.getString("CustomerID"));
				dto.setBoardDate(rs.getString("BoardDate"));
				dto.setBoardContent(rs.getString("BoardContent"));
				dto.setBoardHit(rs.getInt("BoardHit"));
				dto.setBoardCondition(rs.getString("BoardCondition"));
				dto.setOrderID(rs.getInt("orderID"));
				dto.setBoardGroup(rs.getInt("BoardGroup"));
				dto.setBoardStep(rs.getInt("BoardStep"));
				dto.setBoardIndent(rs.getInt("BoardIndent"));
				dto.setBoardDel(rs.getString("BoardDel"));
				dto.setBoardEtc1(rs.getString("BoardEtc1"));
				dtos.add(dto);

			}
			DBConn.dbClose();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dtos;
	}

	public ArrayList<QnaDto> board_select(String bNum) {
		ArrayList<QnaDto> dtos = new ArrayList<QnaDto>();
		DBConn.getInstance();

		String sql = String.format("select * from board where boardNum = %s ", bNum);

		System.out.println(sql);
		ResultSet rs = DBConn.statementQuery(sql);

		try {
			while (rs.next()) {
				QnaDto dto = new QnaDto();

				dto.setBoardNum(rs.getInt("BoardNum"));
				dto.setBoardOption(rs.getString("BoardOption"));
				dto.setBoardAnswered(rs.getString("BoardAnswered"));
				dto.setBoardTitle(rs.getString("BoardTitle"));
				dto.setCustomerID(rs.getString("CustomerID"));
				dto.setBoardDate(rs.getString("BoardDate"));
				dto.setBoardContent(rs.getString("BoardContent"));
				dto.setBoardHit(rs.getInt("BoardHit"));
				dto.setBoardCondition(rs.getString("BoardCondition"));
				dto.setOrderID(rs.getInt("orderID"));
				dto.setBoardGroup(rs.getInt("BoardGroup"));
				dto.setBoardStep(rs.getInt("BoardStep"));
				dto.setBoardIndent(rs.getInt("BoardIndent"));
				dto.setBoardDel(rs.getString("BoardDel"));
				dto.setBoardEtc1(rs.getString("BoardEtc1"));
				dtos.add(dto);

			}
			DBConn.dbClose();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dtos;
	}

	public int answer_insert(String boardNum, String boardOption, String boardAnswered, String boardTitle,
			String customerID, String boardContent, String boardHit, String boardCondition, String orderID,
			String boardGroup, String boardStep, String boardIndent, String boardDel, String productID,
			String boardEtc1) {

		replyShape(boardGroup, boardStep);
		System.out.println("asd");
		int returnValue = 0;
		DBConn.getInstance();
		String sql = String.format(
				"insert into board values" + "(SEQ_BOARD.nextval,'%s','관리자답변','%s','%s',sysdate,'%s',0,'%s','%s'"
						+ ",%s,%s,%s,'%s','%s','%s')",
				boardOption, boardTitle, customerID, boardContent, boardCondition, orderID, boardGroup,Integer.parseInt(boardStep)+1,
				boardIndent, boardDel, productID, boardEtc1);
		
		String sql2 = String.format("update board set boardAnswered='답변완료' where boardNum =%s", boardNum);
		System.out.println(sql);
		DBConn.statementUpdate(sql2);
		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();

		return returnValue;

	}

	private void replyShape(String bGroup, String bStep) {
		Connection con = DBConn.getInstance();
		Statement st = null;
		PreparedStatement ps = null;

		try {
			String sql = "update board set boardStep = boardstep+1 " + "where boardGroup=? and boardStep > ?";
			System.out.println(sql);
			ps = con.prepareStatement(sql);
			ps.setInt(1, Integer.parseInt(bGroup));
			ps.setInt(2, Integer.parseInt(bStep));
			
			ps.executeUpdate();
			DBConn.dbClose();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public int board_delete(String boardNum) {
			System.out.println("삭제중");
			int returnValue = 0;
			DBConn.getInstance();
			String sql = "delete board where boardNum=%s";
			sql = String.format(sql, boardNum);
			returnValue = DBConn.statementUpdate(sql);
			DBConn.dbClose();
			System.out.println(returnValue);
			return returnValue;
		
		}

	public int answer2_update(String boardGroup, String boardStep, String boardContent) {
		
		int returnValue = 0;
		DBConn.getInstance();
		String sql = "update board set boardContent='%s' where boardStep=%s and boardGroup= %s";
		sql = String.format(sql, boardContent, boardStep,boardGroup);
		System.out.println(sql);
		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		System.out.println("DB닫기");
		return returnValue;
		
	}

	public ArrayList<QnaDto> answer_type_select(String search) {
		ArrayList<QnaDto> dtos = new ArrayList<QnaDto>();
		DBConn.getInstance();
		
		/*
		 * String sql ="select * from board where boardNum in (select BoardNum from " +
		 * "(select ROWNUM m,boardGroup from board order by m desc) " +
		 * "where m>"+(viewPage*10-10)+" and m<="+(viewPage*10)+") " +
		 * "order by boardGroup desc,boardStep asc";
		 */
		
		String sql =String.format("select * from board where BOARDANSWERED like '%%%s%%' "
				+ "order by boardGroup desc ,boardStep asc",search); 
				
		System.out.println(sql);
		ResultSet rs = DBConn.statementQuery(sql);
		

		try {
			while (rs.next()) {
				QnaDto dto = new QnaDto();

				dto.setBoardNum(rs.getInt("BoardNum"));
				dto.setBoardOption(rs.getString("BoardOption"));
				dto.setBoardAnswered(rs.getString("BoardAnswered"));
				dto.setBoardTitle(rs.getString("BoardTitle"));
				dto.setCustomerID(rs.getString("CustomerID"));
				dto.setBoardDate(rs.getString("BoardDate"));
				dto.setBoardContent(rs.getString("BoardContent"));
				dto.setBoardHit(rs.getInt("BoardHit"));
				dto.setBoardCondition(rs.getString("BoardCondition"));
				dto.setOrderID(rs.getInt("orderID"));
				dto.setBoardGroup(rs.getInt("BoardGroup"));
				dto.setBoardStep(rs.getInt("BoardStep"));
				dto.setBoardIndent(rs.getInt("BoardIndent"));
				dto.setBoardDel(rs.getString("BoardDel"));
				dto.setBoardEtc1(rs.getString("BoardEtc1"));
				dtos.add(dto);

			}
			DBConn.dbClose();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dtos;
	}

	public ArrayList<QnaDto> customerId_Select(String search) {
		ArrayList<QnaDto> dtos = new ArrayList<QnaDto>();
		DBConn.getInstance();
		
		/*
		 * String sql ="select * from board where boardNum in (select BoardNum from " +
		 * "(select ROWNUM m,boardGroup from board order by m desc) " +
		 * "where m>"+(viewPage*10-10)+" and m<="+(viewPage*10)+") " +
		 * "order by boardGroup desc,boardStep asc";
		 */
		
		String sql =String.format("select * from board where customerId like '%%%s%%' "
				+ "order by boardGroup desc,boardStep asc",search); 
				
		System.out.println(sql);
		ResultSet rs = DBConn.statementQuery(sql);
		

		try {
			while (rs.next()) {
				QnaDto dto = new QnaDto();

				dto.setBoardNum(rs.getInt("BoardNum"));
				dto.setBoardOption(rs.getString("BoardOption"));
				dto.setBoardAnswered(rs.getString("BoardAnswered"));
				dto.setBoardTitle(rs.getString("BoardTitle"));
				dto.setCustomerID(rs.getString("CustomerID"));
				dto.setBoardDate(rs.getString("BoardDate"));
				dto.setBoardContent(rs.getString("BoardContent"));
				dto.setBoardHit(rs.getInt("BoardHit"));
				dto.setBoardCondition(rs.getString("BoardCondition"));
				dto.setOrderID(rs.getInt("orderID"));
				dto.setBoardGroup(rs.getInt("BoardGroup"));
				dto.setBoardStep(rs.getInt("BoardStep"));
				dto.setBoardIndent(rs.getInt("BoardIndent"));
				dto.setBoardDel(rs.getString("BoardDel"));
				dto.setBoardEtc1(rs.getString("BoardEtc1"));
				dtos.add(dto);

			}
			DBConn.dbClose();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dtos;
	}
		
}
