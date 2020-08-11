package com.human.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.human.dto.FileDto;
import com.human.util.DBConn;

public class FileDao {
	public int insert(FileDto dto) {
		int returnValue=0;
		DBConn.getInstance();
		String sql="insert into File "
				+"values (%d,%d,'%s','%s','%s','%s','%s','%s','%s')";
		sql=String.format(sql, dto.getFileNo(),dto.getBoardNum(),dto.getFileOrgName(),dto.getFileNewName(),
				dto.getFileSize(),dto.getFileDate(),dto.getFileDel(),dto.getFileEtc1(),dto.getFileEtc2());
		returnValue=DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}
	//����
	public int update(String fileNewName, int fileNo) {
		int returnValue=0;
		DBConn.getInstance();
		String sql="update File set fNewName='%s' where fNo=%d";
		sql=String.format(sql, fileNewName,fileNo);
		returnValue=DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}
	//��������
	public int delete(String fileDel, int fileNo) {
		int returnValue=0;
		DBConn.getInstance();
		String sql="update File set fDel='%s' where fNo=%d";
		sql=String.format(sql, fileDel, fileNo);
		returnValue=DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}
	//���� ����
	public int fDelete(int fileNo) {
		int returnValue=0;
		DBConn.getInstance();
		String sql="delete File where fileNo=%d";
		sql=String.format(sql, fileNo);
		returnValue=DBConn.statementUpdate(sql);
		DBConn.dbClose();
		return returnValue;
	}
	public ArrayList<FileDto> select(){
		ArrayList<FileDto> fileDtos=new ArrayList<FileDto>();
		DBConn.getInstance();
		String sql="select * from File";
		ResultSet rs=DBConn.statementQuery(sql);
		try {
			while(rs.next()) {
				FileDto dto=new FileDto();
				dto.setFileNo(rs.getInt("fileNo"));
				dto.setBoardNum(rs.getInt("boardNum"));
				dto.setFileOrgName(rs.getString("fileOrgName"));
				dto.setFileNewName(rs.getString("fileNewName"));
				dto.setFileSize(rs.getString("fileSize"));
				dto.setFileDate(rs.getString("fileDate"));
				dto.setFileDel(rs.getString("fileDel"));
				dto.setFileEtc1(rs.getString("fileEtc1"));
				dto.setFileEtc2(rs.getString("fileEtc2"));
				fileDtos.add(dto);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return fileDtos;
	}
	
	
}
