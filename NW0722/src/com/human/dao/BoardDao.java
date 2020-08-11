package com.human.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.human.dto.BoardDto;
import com.human.dto.BoardProductDto;
import com.human.dto.CartVO;
import com.human.dto.FileDto;
import com.human.dto.QnaDto;
import com.human.util.DBConn;

public class BoardDao {

	// insert
	public int insert(BoardDto dto) {
		int returnValue = 0;
		DBConn.getInstance();
		String sql = "insert into board values" + "(%d,'%s','%s','%s','%s','%s','%s',%d,'%s','%s',%d,%d,%d,'%s','%s')";
		sql = String.format(sql, dto.getBoardNum(), dto.getBoardOption(), dto.getBoardAnswered(), dto.getBoardTitle(),
				dto.getCustomerID(), dto.getBoardDate(), dto.getBoardContent(), dto.getBoardHit(),
				dto.getBoardContition(), dto.getOrderID(), dto.getBoardGroup(), dto.getBoardStep(),
				dto.getBoardIndent(), dto.getBoardDel(), dto.getProductID(), dto.getBoardEtc1());
		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}

	// update
	public int update(String boardContent, int boardNum) {
		int returnValue = 0;
		DBConn.getInstance();
		String sql = "update board set bContent='%s' where bNum=%d";
		sql = String.format(sql, boardContent, boardNum);
		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}

	// delete
	public int delete(String boardDel, int boardNum) {
		int returnValue = 0;
		DBConn.getInstance();
		String sql = "update board set bDel='%s' where bNum=%d";
		sql = String.format(sql, boardDel, boardNum);
		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}

	// select
	public ArrayList<BoardDto> select() {
		ArrayList<BoardDto> boardDtos = new ArrayList<BoardDto>();
		DBConn.getInstance();
		String sql = "select * from board";
		ResultSet rs = DBConn.statementQuery(sql);
		try {
			while (rs.next()) {
				boardDtos.add(new BoardDto(rs.getInt("boardNum"), rs.getString("boardOption"),
						rs.getString("boardAnswered"), rs.getString("boardTitle"), rs.getString("customerID"),
						rs.getString("boardDate"), rs.getString("boardContent"), rs.getInt("boardHit"),
						rs.getString("boardContition"), rs.getInt("orderID"), rs.getInt("boardGroup"),
						rs.getInt("boardStep"), rs.getInt("boardIndent"), rs.getString("boardDel"),
						rs.getInt("productID"), rs.getString("boardEtc1")));
			}
			DBConn.dbClose();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return boardDtos;

	}

	// 세션ID를 얻어와 Board테이블에 있는 Customer 아이디와 같으면 데이터 select
	public ArrayList<BoardDto> select(String loginID) {
		ArrayList<BoardDto> boardDtos = new ArrayList<>();

		Connection con = DBConn.getConnection();
		Statement st = null;
		ResultSet rs = null;
		String sql = null;
		sql = String.format("select * from board where customerID='%s'", loginID);

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				boardDtos.add(new BoardDto(rs.getInt("boardNum"), rs.getString("boardOption"),
						rs.getString("boardAnswered"), rs.getString("boardTitle"), rs.getString("customerID"),
						rs.getString("boardDate"), rs.getString("boardContent"), rs.getInt("boardHit"),
						rs.getString("boardCondition"), rs.getInt("orderID"), rs.getInt("boardGroup"),
						rs.getInt("boardStep"), rs.getInt("boardIndent"), rs.getString("boardDel"),
						rs.getInt("productID"), rs.getString("boardEtc1")));
			}
			DBConn.close(st, rs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return boardDtos;
	}

	// 페이징처리
	public int dataCount(String loginID) {
		int returnValue = 0;
		Connection con = DBConn.getConnection();
		String sql = String.format("select count(boardNum) bCount from board where customerID='%s'", loginID);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				returnValue = rs.getInt("bCount");
			}
			DBConn.close(st, rs);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return returnValue;
	}

	// 페이징 고객센터-일대일문의-상품선택-장바구니
	public int dataCountCart(String loginID) {
		int returnValue = 0;
		Connection con = DBConn.getConnection();
		String sql = String.format("select count(cartid) bCount from cart where userid='%s'", loginID);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				returnValue = rs.getInt("bCount");
			}
			DBConn.close(st, rs);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return returnValue;
	}

	// 페이징처리 일대일문의
	public int dataCount1by1(String loginID) {
		int returnValue = 0;
		Connection con = DBConn.getConnection();
		String sql = String.format(
				"select count(boardNum) bCount from board where customerID='%s' and boardEtc1='일대일문의'", loginID);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				returnValue = rs.getInt("bCount");
			}
			DBConn.close(st, rs);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return returnValue;
	}

	// 페이징처리 상품문의
	public int dataCountQna(String loginID) {
		int returnValue = 0;
		Connection con = DBConn.getConnection();
		String sql = String
				.format("select count(boardNum) bCount from board where customerID='%s' and boardEtc1='상품문의'", loginID);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				returnValue = rs.getInt("bCount");
			}
			DBConn.close(st, rs);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return returnValue;
	}

	// rownum으로 select
	public ArrayList<BoardProductDto> select(String page, String pageDataCount, String customerID) {

		ArrayList<BoardProductDto> bProductDtos = new ArrayList<>();
		DBConn.getInstance();

		String sql = String.format("select * from(" + "select rownum rn, sub.* from("
				+ "select * from board b left join products p "
				+ "on b.productID=p.productID order by boardNum asc) sub "
				+ "where rownum <= %s*%s and customerID='%s' order by boardNum desc)" + "where rn>=(%s-1)*%s +1", page,
				pageDataCount, customerID, page, pageDataCount);

		ResultSet rs = DBConn.statementQuery(sql);
		System.out.println(sql);

		try {
			while (rs.next()) {
				BoardProductDto dto = new BoardProductDto();
				dto.setRn(rs.getInt("rn"));
				dto.setBoardNum(rs.getInt("boardNum"));
				dto.setBoardOption(rs.getString("boardOption"));
				dto.setBoardAnswered(rs.getString("boardAnswered"));
				dto.setBoardTitle(rs.getString("boardTitle"));
				dto.setCustomerID(rs.getString("customerID"));
				dto.setBoardDate(rs.getString("boardDate"));
				dto.setBoardContent(rs.getString("boardContent"));
				dto.setBoardHit(rs.getInt("boardHit"));
				dto.setBoardContition(rs.getString("boardCondition"));
				dto.setOrderID(rs.getInt("orderID"));
				dto.setBoardGroup(rs.getInt("boardGroup"));
				dto.setBoardStep(rs.getInt("boardStep"));
				dto.setBoardIndent(rs.getInt("boardIndent"));
				dto.setBoardDel(rs.getString("boardDel"));
				dto.setProductID(rs.getInt("productID"));
				dto.setBoardEtc1(rs.getString("boardEtc1"));
				dto.setProductName(rs.getString("productName"));
				dto.setPicture(rs.getString("picture"));
				bProductDtos.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		DBConn.dbClose();

		return bProductDtos;
	}

	// 답변 불러오기
	public ArrayList<BoardDto> replySelect() {
		ArrayList<BoardDto> replyDtos = new ArrayList<BoardDto>();
		DBConn.getInstance();
		String sql = "select b.boardGroup, b.boardStep, b.boardDate, b.boardContent from board b,"
				+ " newCustomer n where b.customerID=n.newID and n.newRank like 'ADMIN'";
		ResultSet rs = DBConn.statementQuery(sql);
		System.out.println(sql);
		try {
			while (rs.next()) {
				BoardDto dto = new BoardDto();
				dto.setBoardGroup(rs.getInt("boardGroup"));
				dto.setBoardStep(rs.getInt("boardStep"));
				dto.setBoardDate(rs.getString("boardDate"));
				dto.setBoardContent(rs.getString("boardContent"));
				replyDtos.add(dto);
			}
			DBConn.dbClose();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return replyDtos;

	}

	// notice dataCount
	public int dataCount() {
		int returnValue = 0;
		Connection con = DBConn.getConnection();
		String sql = "select count(boardNum) bCount from board where boardEtc1='공지사항'";
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				returnValue = rs.getInt("bCount");
			}
			DBConn.close(st, rs);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return returnValue;
	}

	// 공지사항 (notice) select
	public ArrayList<BoardDto> select(String page, String pageDataCount) {
		ArrayList<BoardDto> boardDtos = new ArrayList<>();
		DBConn.getInstance();
		String sql = String.format("select * from(" + "select rownum rn, sub.* from(" + "select * from board b "
				+ "order by boardNum asc) sub " + "where rownum <= %s*%s and boardEtc1='공지사항' order by boardNum desc)"
				+ "where rn>=(%s-1)*%s +1", page, pageDataCount, page, pageDataCount);
		ResultSet rs = DBConn.statementQuery(sql);
		System.out.println(sql);
		try {
			while (rs.next()) {
				BoardDto dto = new BoardDto();
				dto.setBoardNum(rs.getInt("rn"));
				dto.setBoardTitle(rs.getString("boardtitle"));
				dto.setBoardDate(rs.getString("boardDate"));
				dto.setBoardContent(rs.getString("boardContent"));
				boardDtos.add(dto);
			}
			DBConn.dbClose();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return boardDtos;
	}

	// productDetails 글쓰기
	public void insertQna(String Option, String productID, String customerID, String Title, String Content,
			ArrayList<FileDto> dtos) {

		Connection conn = null;
		Statement stmt;
		String sql1;

		String sql = "insert into board(boardNum, boardOption, boardTitle, customerID, boardContent, boardGroup, productID, BOARDETC1 ) values (SEQ_BOARD.nextval,'%s','%s','%s','%s', SEQ_BOARD.currval,%s,'상품문의')";
		System.out.println(sql);

		sql = String.format(sql, Option, Title, customerID, Content, productID);
		try {
			conn = DBConn.getInstance();
			conn.setAutoCommit(false);
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);

			for (FileDto f : dtos) {
				String newName = f.getFileNewName();
				String orgName = f.getFileOrgName();
				String size = f.getFileSize();
				if (newName != null) {
					sql1 = "insert into FILE_BOARD(fileNo, boardNum, fileOrgName, fileNewName, fileSize) values(SEQ_BOARD_FILE.nextval,SEQ_BOARD.currval,'"
							+ orgName + "', '" + newName + "','" + size + "')";
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

	}

	// indexSearch,index1By1
	// update
	public int updateQnaList(String boardContent, int boardNum) {
		int returnValue = 0;
		DBConn.getInstance();
		String sql = "update board set boardContent='%s' where boardNum=%d";
		sql = String.format(sql, boardContent, boardNum);
		System.out.println(sql);
		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}

	// delete
	public int deleteQnaList(int boardNum) {
		int returnValue = 0;
		DBConn.getInstance();
		String sql = "delete board where boardNum=%d";
		sql = String.format(sql, boardNum);
		System.out.println(sql);
		returnValue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}

	// 일대일문의 1By1 select
	public ArrayList<BoardProductDto> select1By1(String page, String pageDataCount, String customerID) {

		ArrayList<BoardProductDto> bProductDtos = new ArrayList<>();
		DBConn.getInstance();

		String sql = String.format(
				"select * from(" + "select rownum rn, sub.* from(" + "select * from board b left join products p "
						+ "on b.productID=p.productID order by boardNum desc) sub "
						+ "where rownum <= %s*%s and customerID='%s' and boardEtc1='일대일문의' order by boardNum desc)"
						+ "where rn>=(%s-1)*%s +1 ",
				page, pageDataCount, customerID, page, pageDataCount);

		ResultSet rs = DBConn.statementQuery(sql);
		System.out.println(sql);

		try {
			while (rs.next()) {
				BoardProductDto dto = new BoardProductDto();
				dto.setRn(rs.getInt("rn"));
				dto.setBoardNum(rs.getInt("boardNum"));
				dto.setBoardOption(rs.getString("boardOption"));
				dto.setBoardAnswered(rs.getString("boardAnswered"));
				dto.setBoardTitle(rs.getString("boardTitle"));
				dto.setCustomerID(rs.getString("customerID"));
				dto.setBoardDate(rs.getString("boardDate"));
				dto.setBoardContent(rs.getString("boardContent"));
				dto.setBoardHit(rs.getInt("boardHit"));
				dto.setBoardContition(rs.getString("boardCondition"));
				dto.setOrderID(rs.getInt("orderID"));
				dto.setBoardGroup(rs.getInt("boardGroup"));
				dto.setBoardStep(rs.getInt("boardStep"));
				dto.setBoardIndent(rs.getInt("boardIndent"));
				dto.setBoardDel(rs.getString("boardDel"));
				dto.setProductID(rs.getInt("productID"));
				dto.setBoardEtc1(rs.getString("boardEtc1"));
				dto.setProductName(rs.getString("productName"));
				dto.setPicture(rs.getString("picture"));
				bProductDtos.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		DBConn.dbClose();

		return bProductDtos;
	}

	// 상품문의 QnA select
	public ArrayList<BoardProductDto> selectQna(String page, String pageDataCount, String customerID) {

		ArrayList<BoardProductDto> bProductDtos = new ArrayList<>();
		DBConn.getInstance();

		String sql = String.format(
				"select * from(" + "select rownum rn, sub.* from(" + "select * from board b left join products p "
						+ "on b.productID=p.productID order by boardNum desc) sub "
						+ "where rownum <= %s*%s and customerID='%s' and boardEtc1='상품문의' order by boardNum desc)"
						+ "where rn>=(%s-1)*%s +1",
				page, pageDataCount, customerID, page, pageDataCount);

		ResultSet rs = DBConn.statementQuery(sql);
		System.out.println(sql);

		try {
			while (rs.next()) {
				BoardProductDto dto = new BoardProductDto();
				dto.setRn(rs.getInt("rn"));
				dto.setBoardNum(rs.getInt("boardNum"));
				dto.setBoardOption(rs.getString("boardOption"));
				dto.setBoardAnswered(rs.getString("boardAnswered"));
				dto.setBoardTitle(rs.getString("boardTitle"));
				dto.setCustomerID(rs.getString("customerID"));
				dto.setBoardDate(rs.getString("boardDate"));
				dto.setBoardContent(rs.getString("boardContent"));
				dto.setBoardHit(rs.getInt("boardHit"));
				dto.setBoardContition(rs.getString("boardCondition"));
				dto.setOrderID(rs.getInt("orderID"));
				dto.setBoardGroup(rs.getInt("boardGroup"));
				dto.setBoardStep(rs.getInt("boardStep"));
				dto.setBoardIndent(rs.getInt("boardIndent"));
				dto.setBoardDel(rs.getString("boardDel"));
				dto.setProductID(rs.getInt("productID"));
				dto.setBoardEtc1(rs.getString("boardEtc1"));
				dto.setProductName(rs.getString("productName"));
				dto.setPicture(rs.getString("picture"));
				bProductDtos.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		DBConn.dbClose();

		return bProductDtos;
	}

	// 고객센터 일대일문의
	public void insertQna2(String Option, String productID, String customerID, String Title, String Content,
			ArrayList<FileDto> dtos) {
		Connection conn = null;
		Statement stmt;
		String sql1;

		String sql = "insert into board(boardNum, boardOption, boardTitle, customerID, boardContent, boardGroup, productID, BOARDETC1 ) values (SEQ_BOARD.nextval,'%s','%s','%s','%s',SEQ_BOARD.currval,%s,'일대일문의')";
		System.out.println(sql);

		sql = String.format(sql, Option, Title, customerID, Content, productID);
		try {
			conn = DBConn.getInstance();
			conn.setAutoCommit(false);
			stmt = conn.createStatement();
			stmt.executeUpdate(sql);

			for (FileDto f : dtos) {
				String newName = f.getFileNewName();
				String orgName = f.getFileOrgName();
				String size = f.getFileSize();
				if (newName != null) {
					sql1 = "insert into FILE_BOARD(fileNo, boardNum, fileOrgName, fileNewName, fileSize) values(SEQ_BOARD_FILE.nextval,SEQ_BOARD.currval,'"
							+ orgName + "', '" + newName + "','" + size + "')";
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

	}

	// 고객센터 일대일문의 중 상품선택-장바구니탭
	public ArrayList<CartVO> listCart2(String userId, String page, String pageDataCount) {
		ArrayList<CartVO> cartList = new ArrayList<CartVO>();
		Connection conn = DBConn.getConnection();

		String sql = String.format("select * from( " + "select rownum as rn, b.* " + " from(select * from cart "
				+ "order by cartid desc) b " + "where rownum <= %s*%s and userid='%s') " + "where rn >= (%s-1)*%s + 1 ",
				page, pageDataCount, userId, page, pageDataCount);

		Statement st = null;
		ResultSet rs = DBConn.statementQuery(sql);
		System.out.println(sql);
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

	// productDetails 상품문의 게시판 select 역순
	public ArrayList<QnaDto> searchSelect(String page, String pageDataCount, String searchCol, String searchVal,
			String productID) {
		ArrayList<QnaDto> dtos = new ArrayList<QnaDto>();
		DBConn.getInstance();
		String sql = String.format(
				"select * from (" + "select rownum m,sub.boardNum,sub.boardOption,sub.boardAnswered,sub.boardTitle,"
						+ "sub.CustomerID,sub.boardDate,sub.boardContent,sub.boardHit,"
						+ "sub.boardGroup,sub.boardStep,sub.boardIndent,sub.boardDel,sub.ProductID,sub.boardEtc1 "
						+ "from (select * " + "from board where ProductID='%s' and boardStep=0 "
						+ "order by boardNum desc) sub " + "where rownum <= %s*%s and %s like '%%%s%%' " + ") "
						+ "where m>=(%s-1)*%s+1",
				productID, page, pageDataCount, searchCol, searchVal, page, pageDataCount);
		ResultSet rs = DBConn.statementQuery(sql);
		try {
			while (rs.next()) {
				QnaDto dto = new QnaDto();
				dto.setRn(rs.getInt("m"));
				dto.setBoardNum(rs.getInt("boardNum"));
				dto.setBoardOption(rs.getString("boardOption"));
				dto.setBoardAnswered(rs.getString("boardAnswered"));
				dto.setBoardTitle(rs.getString("boardTitle"));
				dto.setCustomerID(rs.getString("CustomerID"));
				dto.setBoardDate(rs.getString("boardDate"));
				dto.setBoardContent(rs.getString("boardContent"));
				dto.setBoardHit(rs.getInt("boardHit"));
				dto.setBoardGroup(rs.getInt("boardGroup"));
				dto.setBoardStep(rs.getInt("boardStep"));
				dto.setBoardIndent(rs.getInt("boardIndent"));
				dto.setBoardDel(rs.getString("boardDel"));
				dto.setProductID(rs.getString("ProductID"));
				dto.setBoardEtc1(rs.getString("boardEtc1"));
				dtos.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dtos;
	}
	//productDetails 상품문의 게시글 개수
	public int qnadataCount(String searchCol, String searchVal, String productID) {
		int returnValue = 0;
		Connection con = DBConn.getConnection();
		String sql = String.format(
				"select count(boardNum) bCount from board where ProductID='%s' and %s like '%%%s%%' and boardstep=0 ",
				productID, searchCol, searchVal);
		Statement st = null;
		ResultSet rs = null;

		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				returnValue = rs.getInt("bCount");
			}
			DBConn.close(st, rs);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return returnValue;
	}

	// QNA답변 불러오기
	public ArrayList<BoardDto> qnaReplySelect() {
		ArrayList<BoardDto> qnaReplyDtos = new ArrayList<BoardDto>();
		DBConn.getInstance();
		String sql = "select boardGroup, boardStep, boardDate, boardContent from board where boardStep=1 ";
		ResultSet rs = DBConn.statementQuery(sql);
		System.out.println(sql);
		try {
			while (rs.next()) {
				BoardDto dto = new BoardDto();
				dto.setBoardGroup(rs.getInt("boardGroup"));
				dto.setBoardStep(rs.getInt("boardStep"));
				dto.setBoardDate(rs.getString("boardDate"));
				dto.setBoardContent(rs.getString("boardContent"));
				qnaReplyDtos.add(dto);
			}
			DBConn.dbClose();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return qnaReplyDtos;

	}

}
