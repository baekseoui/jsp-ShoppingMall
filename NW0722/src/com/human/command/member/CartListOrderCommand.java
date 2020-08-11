package com.human.command.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.BoardDao;
import com.human.dto.BPageDto;
import com.human.dto.CartVO;

public class CartListOrderCommand implements MemberCommand {

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
		BoardDao dao = new BoardDao();
		System.out.println("사용자ID:" + id);

		ArrayList<CartVO> cartList = dao.listCart2(id, page, pageDataCount);
		System.out.println(cartList);
		request.setAttribute("cartList", cartList);
		int totalDataCount = dao.dataCountCart(id);

		BPageDto bPageDto = new BPageDto();
		bPageDto.makePage(Integer.parseInt(page), Integer.parseInt(pageDataCount), totalDataCount);
		request.setAttribute("bPageDto", bPageDto);
		System.out.println(bPageDto);
	}

}
