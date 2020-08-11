package com.human.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.ReviewDao;
import com.human.dto.ReviewDto;

public class ReviewUpdateCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		System.out.println("1");
		ReviewDao rDao=new ReviewDao();
		ReviewDto rDto=new ReviewDto();
		String loginId=(String)session.getAttribute("login_Id");
		int boardNum=Integer.parseInt(request.getParameter("boardNum"));
		System.out.println("boardNum:"+boardNum + "/loginID :"+loginId);
		
		rDto=rDao.reviewContentSelect(loginId,boardNum);
		request.setAttribute("rDto", rDto);
		
	}

}
