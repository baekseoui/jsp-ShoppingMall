package com.human.command.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.BoardDao;
import com.human.dto.BoardDto;

public class MyQnaCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session=request.getSession();
		String loginID=(String)session.getAttribute("login_Id");
		System.out.println("세션ID얻어옴");
		BoardDao boardDao=new BoardDao();
		ArrayList<BoardDto> boardDtos=boardDao.select(loginID);
		
		request.setAttribute("boardDtos", boardDtos);

	}

}
