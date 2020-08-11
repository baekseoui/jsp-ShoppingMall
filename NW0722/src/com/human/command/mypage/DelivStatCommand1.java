package com.human.command.mypage;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.DelivStatDao;
import com.human.dao.OrderDetailsDao;
import com.human.dao.OrdersDao;
import com.human.dao.ProductsDao;
import com.human.dto.OrderDetailsDto;
import com.human.dto.OrdersDto;
import com.human.dto.ProductsDto;

public class DelivStatCommand1 implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String period = request.getParameter("period");
		if(period == null) {
			period = "1";
		}else if(period.equals("-1")) {
			period = "1";
		}
		System.out.println("@@@@@@@@@@@@ DelivStatCommand1  @@@@@@@@@@@@@@ periodSearch = "+period+" @@@@@@@@@@@");
//		OrdersDao ordersDao = new OrdersDao();
		ArrayList<OrdersDto> oDtos = OrdersDao.ordersSelect();

//		OrderDetailsDao ordersDetailsDao = new OrderDetailsDao();
//		ArrayList<OrderDetailsDto> dDtos = OrderDetailsDao.select();

//		ProductsDao productDao = new ProductsDao();
//		ArrayList<ProductsDto> pDtos = ProductsDao.select();

		HttpSession session = request.getSession();
		// String cid = "ZZZZZ";
		String cid = (String) session.getAttribute("userID");// 로그인한 아이디에 대해서 주문 아이디 모두가져오는 것.
		ArrayList<Integer> oidList = new ArrayList<Integer>(); // oidlist 라는 ArrayList객체 생성
		for (int i = 0; i < oDtos.size(); i++) {
			if (oDtos.get(i).getCustomerID().equals(cid)) {
				oidList.add(oDtos.get(i).getOrderID());
			}

		}

		ArrayList orderStat = null;
		ArrayList productStat = null;
		ArrayList detailStat = null;
		DelivStatDao dao = new DelivStatDao();
		if (period != null) {
			if (period.equals("0")) {
				orderStat = dao.ordersOrderdetailsProductsJoin_1(oidList, "orders");
				productStat = dao.ordersOrderdetailsProductsJoin_1(oidList, "products");
				detailStat = dao.ordersOrderdetailsProductsJoin_1(oidList, "orderDetails");
			} else {
				orderStat = dao.ordersOrderdetailsProductsJoin_1(oidList, "orders", period);
				productStat = dao.ordersOrderdetailsProductsJoin_1(oidList, "products", period);
				detailStat = dao.ordersOrderdetailsProductsJoin_1(oidList, "orderDetails", period);
			}

			// ArrayList allStat = new ArrayList();
			// allStat.add(orderStat);
			// allStat.add(productStat);
			// allStat.add(detailStat);

			request.setAttribute("orderStat", orderStat);
			request.setAttribute("productStat", productStat);
			request.setAttribute("detailStat", detailStat);
//		System.out.println("ordersize:" + orderStat.size());
//		System.out.println("productStatize:" + productStat.size());
//		System.out.println("detailStatize:" + detailStat.size());
			// request.setAttribute("allStat", allStat);
//			System.out.println("@@@@@@@@@@@@ orderdate  @@@@@@@@@@@@@@ orderStat.size() = "+orderStat.size()+" @@@@@@@@@@@");
//			for(int i = 0 ; i < orderStat.size(); i++) {
//				System.out.println(((ArrayList<OrdersDto>)orderStat).get(i).getOrderDate());
//			}
//			System.out.println("@@@@@@@@@@@@ ######################################################### @@@@@@@@@@@");
		}
	}
}
