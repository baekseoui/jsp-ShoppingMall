package com.human.command.mypage;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.DelivStatDao;
import com.human.dao.LookupDateDao;
import com.human.dao.OrdersDao;
import com.human.dto.LookupDateDto;
import com.human.dto.OrdersDto;

public class CustomerCommand implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		// ID 받는과정
		String userID = (String) session.getAttribute("login_Id");
		session.setAttribute("userID", userID);

		// 취소,교환,반품 숫자 Count
		LookupDateDao lDao = new LookupDateDao();
		ArrayList<LookupDateDto> lDtos = lDao.selectDate(userID);
		int cancel = 0, change = 0, back = 0;
		for (LookupDateDto d : lDtos) {
			if (d.getType().trim().equals("취소")) {
				cancel += 1;
			} else if (d.getType().trim().equals("교환")) {
				change += 1;
			} else if (d.getType().trim().equals("반품")) {
				back += 1;
			}
		}
		request.setAttribute("cancel", cancel);
		request.setAttribute("change", change);
		request.setAttribute("back", back);

		
		// 상품 준비중, 배송중, 배송완료Count
		ArrayList<OrdersDto> oDtos = OrdersDao.ordersSelect();
		String cid = (String) session.getAttribute("login_Id");// 로그인한 아이디에 대해서 주문 아이디 모두가져오는 것.
		ArrayList<Integer> oidList = new ArrayList<Integer>(); // oidlist 라는 ArrayList객체 생성
		for (int i = 0; i < oDtos.size(); i++) {
			if (oDtos.get(i).getCustomerID().equals(cid)) {
				oidList.add(oDtos.get(i).getOrderID());
			}

		}
		ArrayList orderStat_ready = null;
		ArrayList orderStat_deliv = null;
		ArrayList orderStat_comp = null;
		DelivStatDao dao = new DelivStatDao();

		orderStat_ready = dao.ordersOrderdetailsProductsJoin_0(oidList, "orders");
		orderStat_deliv = dao.ordersOrderdetailsProductsJoin_1(oidList, "orders");
		orderStat_comp = dao.ordersOrderdetailsProductsJoin_2(oidList, "orders");
		
		System.out.println("##############orderStat_ready : " + orderStat_ready.size());
		System.out.println("################orderStat_deliv : " + orderStat_deliv.size());
		System.out.println("###############orderStat_comp : " + orderStat_comp.size());
		
		request.setAttribute("orderStat_ready", orderStat_ready.size());
		request.setAttribute("orderStat_deliv", orderStat_deliv.size());
		request.setAttribute("orderStat_comp", orderStat_comp.size());
		

	}

}
