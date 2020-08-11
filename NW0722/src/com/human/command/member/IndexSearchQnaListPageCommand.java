package com.human.command.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.BoardDao;
import com.human.dto.BPageDto;
import com.human.dto.BoardDto;
import com.human.dto.BoardProductDto;

public class IndexSearchQnaListPageCommand implements MemberCommand {

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
		HttpSession session=request.getSession();
		String loginID=(String)session.getAttribute("login_Id");
		BoardDao boardDao=new BoardDao();
		
		int totalDataCount=boardDao.dataCountQna(loginID);
		
		BPageDto bPageDto=new BPageDto();
		bPageDto.makePage(Integer.parseInt(page),Integer.parseInt(pageDataCount),totalDataCount);
		request.setAttribute("bPageDto", bPageDto);

		ArrayList<BoardProductDto> bProductDtos=boardDao.selectQna(page, pageDataCount, loginID);
		request.setAttribute("bProductDtos", bProductDtos);
		
		ArrayList<BoardDto> replyDtos=boardDao.replySelect();
		request.setAttribute("replyDtos", replyDtos);
		

	}

}
