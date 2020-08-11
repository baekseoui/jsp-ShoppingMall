package com.human.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.human.dto.Chatting_Dto;
import com.human.util.DBConn;


public class Chatting_Dao {

	
	//채팅저장
	public int Chatting_Insert(String chat_Article) {
			
		int returnvalue = 0;
		DBConn.getInstance();
		String sql = "insert into Chatting values('%s',systimestamp)";
		sql=String.format(sql, chat_Article);
		
		returnvalue = DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnvalue;
	}
	
	
	
	//새로접속시 채팅출력
	public ArrayList<Chatting_Dto> Chatting_Select() {
		
		DBConn.getInstance();
		ArrayList<Chatting_Dto> dtos = new ArrayList<Chatting_Dto>();
		
		String sql = "SELECT Chat_Article,Chat_Time FROM(SELECT  Chat_Article,Chat_Time FROM Chatting ORDER BY ROWNUM DESC)WHERE ROWNUM>0 and ROWNUM <= 50 order by Chat_Time asc";

		ResultSet rs = DBConn.statementQuery(sql);
		
	
		try {
			while(rs.next()) {
				Chatting_Dto dto= new Chatting_Dto();
				
				dto.setChat_Article(rs.getString("Chat_Article")+"\n");
				
				dtos.add(dto);
			}
			DBConn.dbClose();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
		return dtos;
	}
	
	
}
