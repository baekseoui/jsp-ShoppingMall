package com.human.command.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.BoardDao;
import com.human.dto.BPageDto;
import com.human.dto.BoardDto;
import com.human.dto.BoardProductDto;

public class NoticeCommand implements MemberCommand {

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
		
		BoardDao boardDao=new BoardDao();
		int totalDataCount=boardDao.dataCount();
		
		BPageDto bPageDto=new BPageDto();
		bPageDto.makePage(Integer.parseInt(page), Integer.parseInt(pageDataCount), totalDataCount);
		request.setAttribute("bPageDto", bPageDto);
		
		System.out.println(bPageDto);
		
		//프로덕트 조인
		ArrayList<BoardDto> boardDtos=boardDao.select(page, pageDataCount);
		request.setAttribute("boardDtos", boardDtos);

	}

}
