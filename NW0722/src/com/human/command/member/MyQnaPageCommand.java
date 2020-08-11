package com.human.command.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.BoardDao;
import com.human.dao.ReviewDao;
import com.human.dto.BPageDto;
import com.human.dto.BoardDto;
import com.human.dto.BoardProductDto;
import com.human.dto.ReviewDto;

public class MyQnaPageCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String page=(String)request.getParameter("page");
		String pageDataCount=(String)request.getParameter("pageDataCount");
		
		if(page==null) {
			page="1";
		}
		if(pageDataCount==null) {
			pageDataCount="15";
		}
		
		System.out.println(page);
		System.out.println(pageDataCount);
		
		HttpSession session=request.getSession();
		String loginID=(String)session.getAttribute("login_Id");
		System.out.println("세션ID얻어옴");
		BoardDao boardDao=new BoardDao();
		
		int totalDataCount=boardDao.dataCount1by1(loginID);
		
		//페이징처리
		BPageDto bPageDto=new BPageDto();
		bPageDto.makePage(Integer.parseInt(page), Integer.parseInt(pageDataCount), totalDataCount);
		request.setAttribute("bPageDto", bPageDto);
		
		System.out.println(bPageDto);
		
		//프로덕트 조인
		ArrayList<BoardProductDto> bProductDtos=boardDao.select1By1(page, pageDataCount, loginID);
		request.setAttribute("bProductDtos", bProductDtos);
		
		//답변 불러오기 필요
		ArrayList<BoardDto> replyDtos=boardDao.replySelect();
		request.setAttribute("replyDtos", replyDtos);
		
		
		
	}

}
