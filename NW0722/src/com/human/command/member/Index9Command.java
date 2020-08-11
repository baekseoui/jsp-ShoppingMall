package com.human.command.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.ReviewDao;
import com.human.dto.ReviewDto;

public class Index9Command implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String loginId=(String)session.getAttribute("login_Id");
		ArrayList<ReviewDto> rDtos =new ArrayList<ReviewDto>();
		
		
		ReviewDao rDao=new ReviewDao();
		System.out.println(loginId);
		
		rDtos=rDao.reviewSelect(loginId);
		request.setAttribute("rDtos",rDtos);
		
		
		
		ArrayList<ReviewDto> dto1 = new ArrayList<ReviewDto>();
		
		dto1=rDao.reviewFileSelect(loginId);
		request.setAttribute("dto1",dto1);
		
		
		System.out.println(rDtos);
		
		
		
	}

}
