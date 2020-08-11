package com.human.command.mypage;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.DelivStatDao;
import com.human.dao.OrdersDao;
import com.human.dto.OrdersDto;

public class SearchPeriod implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String period = request.getParameter("period");
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@ periodSearch @@@@@@@@@@@@@@@@@@@@@@@@ " + period);

		ArrayList<OrdersDto> oDtos = OrdersDao.ordersSelect();

		HttpSession session = request.getSession();
		// String cid = "ZZZZZ";
		String cid = (String) session.getAttribute("userID");// 로그인한 아이디에 대해서 주문 아이디 모두가져오는 것.
		ArrayList<Integer> oidList = new ArrayList<Integer>(); // oidlist 라는 ArrayList객체 생성
		for (int i = 0; i < oDtos.size(); i++) {
			if (oDtos.get(i).getCustomerID().equals(cid)) {
				oidList.add(oDtos.get(i).getOrderID());
			}

		}

		DelivStatDao dao = new DelivStatDao();
		ArrayList orderStat = dao.ordersOrderdetailsProductsJoin_2(oidList, "orders", period);
		ArrayList productStat = dao.ordersOrderdetailsProductsJoin_2(oidList, "products", period);
		ArrayList detailStat = dao.ordersOrderdetailsProductsJoin_2(oidList, "orderDetails", period);

		System.out.println("ordersize:" + orderStat.size());
		System.out.println("productStatize:" + productStat.size());
		System.out.println("detailStatize:" + detailStat.size());
		
		request.setAttribute("orderStat", orderStat);
		request.setAttribute("productStat", productStat);
		request.setAttribute("detailStat", detailStat);
	}

}
