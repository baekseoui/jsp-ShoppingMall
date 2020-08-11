package com.human.command.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.Select_orderDao;
import com.human.dto.BPageDto;
import com.human.dto.Select_orderDto;

public class User_selectCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String page = (String) request.getParameter("page");
		String pageDataCount = (String) request.getParameter("pageDataCount");

		if (page == null) {
			page = "1";
		}
		if (pageDataCount == null) {
			pageDataCount = "10";
		}

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("login_Id");
		Select_orderDao dao = new Select_orderDao();
		System.out.println("사용자ID:" + id);

		ArrayList<Select_orderDto> dtos = dao.select(id, page, pageDataCount);
		System.out.println(dtos);
		request.setAttribute("dtos", dtos);
		int totalDataCount = dao.dataCount(id);
		BPageDto bPageDto = new BPageDto();

		bPageDto.makePage(Integer.parseInt(page), Integer.parseInt(pageDataCount), totalDataCount);
		request.setAttribute("bPageDto", bPageDto);
		System.out.println(bPageDto);

	}

}
