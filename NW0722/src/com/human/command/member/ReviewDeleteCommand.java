package com.human.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.ReviewDao;

public class ReviewDeleteCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		ReviewDao rDao=new ReviewDao();
		int boardNum=Integer.parseInt(request.getParameter("boardNum"));
		rDao.ReviewDelete(boardNum);
		
	}

}
