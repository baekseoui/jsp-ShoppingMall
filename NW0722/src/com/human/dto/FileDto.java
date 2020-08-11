package com.human.dto;

public class FileDto {
	private int fileNo;	//���Ϲ�ȣ
	private int boardNum;	//�Խù���ȣ
	private String fileOrgName;	//���������̸�
	private String fileNewName;	//�������̸�
	private String fileSize;	//����ũ��
	private String fileDate;	//��ϳ�¥
	private String fileDel;	//��������
	private String fileEtc1;	//�����÷�1
	private String fileEtc2;	//�����÷�2
	//������
	public FileDto() {}
	public FileDto(int fileNo, int boardNum, String fileOrgName, String fileNewName, String fileSize, String fileDate,
			String fileDel, String fileEtc1, String fileEtc2) {
		super();
		this.fileNo = fileNo;
		this.boardNum = boardNum;
		this.fileOrgName = fileOrgName;
		this.fileNewName = fileNewName;
		this.fileSize = fileSize;
		this.fileDate = fileDate;
		this.fileDel = fileDel;
		this.fileEtc1 = fileEtc1;
		this.fileEtc2 = fileEtc2;
	}
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getFileOrgName() {
		return fileOrgName;
	}
	public void setFileOrgName(String fileOrgName) {
		this.fileOrgName = fileOrgName;
	}
	public String getFileNewName() {
		return fileNewName;
	}
	public void setFileNewName(String fileNewName) {
		this.fileNewName = fileNewName;
	}
	public String getFileSize() {
		return fileSize;
	}
	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}
	public String getFileDate() {
		return fileDate;
	}
	public void setFileDate(String fileDate) {
		this.fileDate = fileDate;
	}
	public String getFileDel() {
		return fileDel;
	}
	public void setFileDel(String fileDel) {
		this.fileDel = fileDel;
	}
	public String getFileEtc1() {
		return fileEtc1;
	}
	public void setFileEtc1(String fileEtc1) {
		this.fileEtc1 = fileEtc1;
	}
	public String getFileEtc2() {
		return fileEtc2;
	}
	public void setFileEtc2(String fileEtc2) {
		this.fileEtc2 = fileEtc2;
	};
	
	
}
