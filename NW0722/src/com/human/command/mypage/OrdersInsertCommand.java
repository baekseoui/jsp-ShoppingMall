package com.human.command.mypage;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.CartDao;
import com.human.dao.OrderDetailsDao;
import com.human.dao.OrdersDao;
import com.human.dto.CartVO;
import com.human.dto.OrderDetailsDto;
import com.human.dto.OrdersDto;
import com.human.util.DBConn;

public class OrdersInsertCommand implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		//Order 테이블에 주문 정보 Insert 하는 부분
		OrdersDao dao = new OrdersDao();
		OrdersDto dto = new OrdersDto();
		
		String customerID = request.getParameter("customerID");
		String shipAddress = request.getParameter("shipAddress");
		String shipCity = request.getParameter("shipCity");
		String shipRegion = request.getParameter("shipRegion");
		String shipPostalCode = request.getParameter("shipPostalCode");
		String shipCountry = request.getParameter("shipCountry");
		
//		Date today = new Date();
//		SimpleDateFormat sdf = new SimpleDateFormat();
//		String orderDate = sdf.format(today);
//		System.out.println(today);
		System.out.println(customerID);
		
		dto.setCustomerID(customerID);
		dto.setShipAddress(shipAddress);
		dto.setShipCity(shipCity);
		dto.setShipRegion(shipRegion);
		dto.setShipPostalCode(shipPostalCode);
		dto.setShipCountry(shipCountry);
//		dto.setOrderDate(orderDate);
		
		
		dao.ordersInsert(dto);

		
		//OrderDetails 테이블에 Insert 하는 부분
		
		ArrayList<OrdersDto> dtoArr = dao.ordersSelectDesc();
		
		
		OrderDetailsDto dDto = new OrderDetailsDto();
		OrderDetailsDao dDao = new OrderDetailsDao();
		
		CartDao cartDao = CartDao.getInstance();
		ArrayList<CartVO> cartDtos = cartDao.listCart(customerID);
		
		
		System.out.println("카트에 담고 주문 하는 "+cartDtos);
		for(CartVO dtos : cartDtos) {
			dDto.setOrderID(dtoArr.get(0).getOrderID());
			dDto.setProductID(dtos.getProductId());
			dDto.setUnitPrice(dtos.getPrice2());
			dDto.setQuantity(dtos.getQuantity());
			
			dDao.insert(dDto);
			System.out.println("ORDERDETAILS INSERT 합니다");
		}

		
		
		request.setAttribute("orderID", dtoArr.get(0).getOrderID());
	}

}
