package com.human.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.ReviewDao;
import com.human.dto.ReviewDto;

public class ReviewUpdateOkCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		ReviewDao rDao=new ReviewDao();
		String boardContent=request.getParameter("boardContent");
		String boardNum=request.getParameter("boardNum");
		System.out.println("boardNum"+boardNum+"/boardContent:" +boardContent);
		
		rDao.ReviewUpdate(boardContent,boardNum);
		
		
		
	}

}
