package com.human.command.mypage;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.CartDao;
import com.human.dao.CustomersDao;
import com.human.dto.CartVO;
import com.human.dto.CustomersDto;

public class OrdersSelectCommand implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		String customerID = (String) session.getAttribute("login_Id");
		
		CustomersDao dao = new CustomersDao();
		ArrayList<CustomersDto> dtos = dao.select(customerID);
		request.setAttribute("dtos",dtos);
		
		CartDao cartDao = CartDao.getInstance();
		ArrayList<CartVO> cartDtos = cartDao.listCart(dtos.get(0).getCustomerID());
		
		request.setAttribute("cartDtos", cartDtos);
		System.out.println("카트 정보");
		for(CartVO cart : cartDtos) {
			System.out.println(cart);
		}

	}

}
