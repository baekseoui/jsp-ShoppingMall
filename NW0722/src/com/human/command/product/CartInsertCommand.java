package com.human.command.product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.CartDao;
import com.human.dto.CartVO;
import com.human.dto.MemberDto;

public class CartInsertCommand implements CartCommand {
	//장바구니 목록 만들기
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session =request.getSession();
			String id = (String) session.getAttribute("login_Id");
			System.out.println("login_Id : "+id);
			if(id == null) {
				String url="../member/mainLoginPage.jsp";
				request.getRequestDispatcher(url).forward(request, response);
			}else {
				CartVO cartVO = new CartVO();
				cartVO.setUserId(id);
				cartVO.setProductId(Integer.parseInt(request.getParameter("productId")));
				cartVO.setProductName(request.getParameter("productName"));
				cartVO.setQuantity(Integer.parseInt(request.getParameter("amount")));
				cartVO.setPrice2(Double.parseDouble(request.getParameter("price2")));
				cartVO.setPicture(request.getParameter("picture"));
				CartDao cartDAO = CartDao.getInstance();
				cartDAO.insertCart(cartVO);
			}
		}
	}

