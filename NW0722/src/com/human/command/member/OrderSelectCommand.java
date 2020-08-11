package com.human.command.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.ReviewDao;
import com.human.dto.ReviewDto;

public class OrderSelectCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String loginId = (String) session.getAttribute("login_Id");
		ArrayList<ReviewDto> orDtos = new ArrayList<ReviewDto>();
		ReviewDao rDao = new ReviewDao();
		System.out.println(loginId);
		orDtos = rDao.OrderSelect(loginId);
		request.setAttribute("orDtos", orDtos);
		System.out.println("orderSelectCommandOk");

	


	}

}
