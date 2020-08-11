package com.human.command.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.human.dao.CartDao;

public class CartDeleteCommand implements CartCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cseq = request.getParameter("cartId");

		 CartDao cartDAO = CartDao.getInstance();
		 cartDAO.deleteCart(Integer.parseInt(cseq));

	}

}
