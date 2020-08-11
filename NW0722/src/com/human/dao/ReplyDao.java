package com.human.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.human.dto.ReplyDto;
import com.human.util.DBConn;

public class ReplyDao {

	//statementUpdate��ü ����ϴ� ��ɵ� (insert, update, delete)
	
	// insert
	public int insert(ReplyDto dto) {
		
		// � �۾� �Ϸ��ߴ��� �˷��ִ� returnVal
		int returnValue = 0;
		
		DBConn.getInstance();
		String sql = "insert into Reply "
				+ "values('%s', %d, '%s', '%s', %d, %d, %d, '%s', '%s','%s')";
		sql = String.format(sql, dto.getReplyName(), dto.getBoardNum(), dto.getReplyContent(),
				dto.getReplyDate(), dto.getReplyGroup(), dto.getReplyStep(), dto.getReplyIndent(),
				dto.getReplyDel(), dto.getReplyEtc1(), dto.getReplyEtc2());
		
		returnValue = DBConn.statementUpdate(sql);
		
		return returnValue;
	}
	
	//update �������. ��� �ۼ��ڿ� �Խù� ��ȣ �ΰ��� ���� ã�Ƴ� + ��۳���.
	public int update(int bNum, String rName, String rContent) {
		int returnValue = 0;
		DBConn.getInstance();
		String sql = "update Reply set rContent='%s' where rName='%s' and bNum=%d";
		
		sql = String.format(sql, rContent, rName, bNum);
		
		returnValue = DBConn.statementUpdate(sql);
		
		return returnValue;
	}
	
	
	//delete ����. ��� �ۼ���, �Խù���ȣ  ���ؼ� ���� + rDel �������
	//update�� ���� ���μ���
	public int updateForDelete(String rName, int bNum, String rDel) {
		int returnValue = 0;
		DBConn.getInstance();
		String sql ="update Reply set rDel='%s' where rName='%s' and bNum=%d";
		
		sql = String.format(sql, rDel, rName, bNum);
		
		returnValue = DBConn.statementUpdate(sql);
		
		return returnValue;
	}
	
	
	//select ��ü���
	public ArrayList<ReplyDto> select1(){
		ArrayList<ReplyDto> dtos = new ArrayList<ReplyDto>();
		DBConn.getInstance();
		String sql = "select * from Reply";
		ResultSet rs = DBConn.statementQuery(sql);
		
		try {
			while(rs.next()) {
				ReplyDto dto = new ReplyDto();
				dto.setReplyName(rs.getString("replyName"));
				dto.setBoardNum(rs.getInt("boardNum"));
				dto.setReplyContent(rs.getString("replyContent"));
				dto.setReplyDate(rs.getString("replyDate"));
				dto.setReplyGroup(rs.getInt("replyGroup"));
				dto.setReplyStep(rs.getInt("replyStep"));
				dto.setReplyIndent(rs.getInt("replyIndent"));
				dto.setReplyDel(rs.getString("replyDel"));
				dto.setReplyEtc1(rs.getString("replyEtc1"));
				dto.setReplyEtc2(rs.getString("replyEtc2"));
				
				dtos.add(dto);	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBConn.dbClose();
		return dtos;
	}
	
	//select �� ���� ��� �ۼ��ڰ� �� �۵� �ҷ�����(�³�?)
	public ArrayList<ReplyDto> selectRName(String rName){
		ArrayList<ReplyDto> dtos = new ArrayList<ReplyDto>();
		DBConn.getInstance();
		String sql = "select * from Reply where rName = '%s'";
		ResultSet rs = DBConn.statementQuery(String.format(sql, rName));
		
		try {
			while(rs.next()) {
				ReplyDto dto = new ReplyDto();
				dto.setReplyName(rs.getString("replyName"));
				dto.setBoardNum(rs.getInt("bNum"));
				dto.setReplyContent(rs.getString("replyContent"));
				dto.setReplyDate(rs.getString("replyDate"));
				dto.setReplyGroup(rs.getInt("replyGroup"));
				dto.setReplyStep(rs.getInt("replyStep"));
				dto.setReplyIndent(rs.getInt("replyIndent"));
				dto.setReplyDel(rs.getString("replyDel"));
				dto.setReplyEtc1(rs.getString("replyEtc1"));
				dto.setReplyEtc2(rs.getString("replyEtc2"));
				
				dtos.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBConn.dbClose();
		return dtos;
	}
	
	
	
	
}
