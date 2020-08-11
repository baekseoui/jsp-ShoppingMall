package com.human.command.mypage;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.GetOrderDao;
import com.human.dto.CustomersDto;
import com.human.dto.GetOrderPageDto;
import com.human.dto.GetOrderPriceDto;
import com.human.dto.OrderDetailsDto;
import com.human.dto.OrdersDto;
import com.human.dto.ProductsDto;

public class GetOrderCommand implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		// dao 생성
		GetOrderDao dao = new GetOrderDao();

		// 아이디 받아오기
		HttpSession session = request.getSession();
		String customerId = (String) session.getAttribute("userID");	
		System.out.println(customerId);
		
		// 주문번호 받아오기(최근..)
		String orderId = request.getParameter("oid");
		System.out.println(orderId);

		// 주문정보 가져오기
		OrdersDto ordersDto = dao.getOrder(orderId, customerId);
		// 고객 정보 가져오기
		CustomersDto customersDto = dao.getUser(customerId);
		// 페이징
		String page = request.getParameter("page");
		if (page == null) {
			page = "1";
		}
		ArrayList<OrderDetailsDto> orderDetailDtos = dao.select(orderId, page);
		ArrayList<ProductsDto> productsDtos = new ArrayList<ProductsDto>();
		for (OrderDetailsDto dto : orderDetailDtos) {
			productsDtos.add(dao.getProduct(dto.getProductID()));
		}
		GetOrderPageDto bPageDto = new GetOrderPageDto();
		int totalDataCount = dao.dataCount(orderId);
		bPageDto.makePage(Integer.parseInt(page), totalDataCount);

		// 가격 정보 가져오기
		GetOrderPriceDto priceDto = new GetOrderPriceDto();
		priceDto.getPriceInfo(orderId);
		

		// 정보 셋팅
		request.setAttribute("ordersDto", ordersDto);
		request.setAttribute("customersDto", customersDto);
		request.setAttribute("orderDetailDtos", orderDetailDtos);
		request.setAttribute("productsDtos", productsDtos);
		request.setAttribute("priceDto", priceDto);
		request.setAttribute("bPageDto", bPageDto);

	}

}
