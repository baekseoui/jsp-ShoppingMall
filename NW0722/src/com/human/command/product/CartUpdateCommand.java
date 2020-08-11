package com.human.command.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.CartDao;
import com.human.dto.CartVO;

public class CartUpdateCommand implements CartCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartDao cartDAO = CartDao.getInstance();
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("login_Id");
		int cartId=Integer.parseInt(request.getParameter("cartId"));
		int quantity=Integer.parseInt(request.getParameter("quantity"));
		
		cartDAO.updateCart(id,cartId,quantity);
	}

}
