package com.human.command.member;

import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.BoardDao;
import com.human.dao.ReviewDao;
import com.human.dto.FileDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ReviewInsertCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		ReviewDao rDao =new ReviewDao();
		HttpSession session = request.getSession();
		String loginId=(String)session.getAttribute("login_Id");
		
		
		System.out.println("10");
	
		
		String savePath = "tempUpload"; // 업로드될 폴더이름
		int uploadFileSizeLimit = 10 * 1024 * 1024; //현재 10메가 제한 자바스크립트로 10메가 이상은 제한 해줘야함.(제약조건)
		String encType = "UTF-8";
		
		ServletContext context = request.getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		try {
			
			MultipartRequest multi = new MultipartRequest(request,
					uploadFilePath, uploadFileSizeLimit, encType,
					new DefaultFileRenamePolicy());
			System.out.println(multi);
			String boardContent=multi.getParameter("boardContent");
			String orderID=multi.getParameter("orderID");
			String productID=multi.getParameter("productID");
			
			System.out.println("11");
			//데이터집어넣기
			BoardDao dao = new BoardDao();
			System.out.println(" multi.getFileNames(); : " + multi.getFileNames());
			Enumeration files = multi.getFileNames();
			
			ArrayList<FileDto> dtos = new ArrayList<FileDto>();
			System.out.println("12");
			
			if(files.hasMoreElements()) {
				FileDto dto = new FileDto();
				System.out.println("13");
				String file = (String) files.nextElement();
				System.out.println("14");
				String file_name = multi.getFilesystemName(file);
				System.out.println("15");
				// 중복된 파일을 업로드할 경우 파일명이 바뀐다.
				String ori_file_name = multi.getOriginalFileName(file);
				System.out.println("16");
				String bytes = Integer.toString(file.length());
				
				System.out.println("17");
				dto.setFileNewName(file_name);
				dto.setFileOrgName(ori_file_name);
				dto.setFileSize(bytes);
				
				dtos.add(dto);
				
				System.out.println("file : "+file);
				System.out.println("file_name : "+file_name);
				System.out.println("ori_file_name : "+ori_file_name);
				System.out.println("uploadFilePath : "+uploadFilePath);
				System.out.println("bytes : "+bytes);
			}
			
			
			rDao.ReviewInsert(loginId,boardContent,orderID,productID,dtos);
			
		} catch (Exception e) {
			System.out.print("예외 발생 : " + e);
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	
	}
	
	

}
