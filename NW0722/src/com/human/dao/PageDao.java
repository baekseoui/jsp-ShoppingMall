package com.human.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.human.util.DBConn;

	public class PageDao {
	//자유 게시판 개수 출력
		public int Board_Count(String name, String table){
			DBConn.getInstance();
			
			String sql = "select count(%s) from %s";
			sql = String.format(sql,name,table);
			ResultSet rs = DBConn.statementQuery(sql);
			int count =0;
			
			try {
				while(rs.next()) {
					
					count = rs.getInt(1);
				
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return count;
		}
		public int search_board(String name,String table,String product_name) {
			return 0;
			
		}
	}
