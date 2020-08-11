package com.human.command.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.LookupDateDao;
import com.human.dao.OrdersDao;

public class DelivCancelCommand implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String oid = request.getParameter("oid");
		System.out.println("DelivCancelCommand -> oid : " + oid);

		HttpSession session = request.getSession();
		String cid = (String) session.getAttribute("userID");// 로그인한 아이디에 대해서 주문 아이디 모두가져오는 것.
		
		OrdersDao oDao = new OrdersDao();
		oDao.ordersCancelUpdate(Integer.parseInt(oid));//orders table update
		
		LookupDateDao lDao = new LookupDateDao();
		lDao.insert(cid, oid, "sysdate", "null", "취소");//lookupdate table insert
	}

}
