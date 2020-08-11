package com.human.command.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.CartDao;

public class OrdersCompleteCommand implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		String customerID = (String) session.getAttribute("login_Id");
		System.out.println("GET SESSION : " + customerID);
		CartDao cartDAO = CartDao.getInstance();
		cartDAO.deleteCart(customerID);
		System.out.println("모든 주문 처리 완료! 주문 번호 : "+request.getAttribute("orderID"));
	}

}
