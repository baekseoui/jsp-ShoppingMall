package com.human.command.mypage;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.CartDao;
import com.human.dao.CustomersDao;
import com.human.dto.CartVO;
import com.human.dto.CustomersDto;

public class OrdersBuyNowSelectCommand implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		String customerID = (String) session.getAttribute("login_Id");
		
		CustomersDao dao = new CustomersDao();
		ArrayList<CustomersDto> dtos = dao.select(customerID);
		request.setAttribute("dtos",dtos);
		
		CartVO cartVo = new CartVO();
		CartDao cartDao = CartDao.getInstance();
		ArrayList<CartVO> cartDtos = cartDao.listCart(customerID);
		System.out.println("기존카트"+cartDtos);
		cartVo.setUserId(dtos.get(0).getCustomerID());
		cartVo.setPicture(request.getParameter("picture"));
		cartVo.setProductName(request.getParameter("productName"));
		cartVo.setProductId(Integer.parseInt(request.getParameter("productId")));
		cartVo.setPrice2(Double.parseDouble(request.getParameter("price2")));
		cartVo.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		cartDao.insertCart(cartVo);
		
//		ArrayList<CartVO> cartDtos = new ArrayList<CartVO>();
		cartDtos.add(cartVo);
		System.out.println("바로구매하는 "+cartDtos);
		
		request.setAttribute("cartDtos", cartDtos);

	}

}
