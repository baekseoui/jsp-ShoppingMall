package com.human.command.product;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.CartDao;
import com.human.dto.CartVO;

public class CartListCommand implements CartCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("login_Id");
		System.out.println("login_Id : "+id);
		if(id==null) {
			String url="../member/mainLoginPage.jsp";
			request.getRequestDispatcher(url).forward(request, response);
		}else {
			CartDao cDao = CartDao.getInstance();
			ArrayList<CartVO> cartList = cDao.listCart(id);
			double totalPrice=0;
			for(CartVO cartVO : cartList) {
				totalPrice += Integer.parseInt(String.valueOf(Math.round(cartVO.getPrice2()*100))) * cartVO.getQuantity();
			}
//			BigDecimal bd = new BigDecimal(totalPrice).setScale(2, RoundingMode.FLOOR);
			totalPrice = Double.parseDouble(String.valueOf(totalPrice))/100;
			System.out.println(totalPrice);
			request.setAttribute("cartList", cartList);
			request.setAttribute("totalPrice", totalPrice);
		}	
		
	}

}
