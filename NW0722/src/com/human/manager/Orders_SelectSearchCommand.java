package com.human.manager;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.human.dao.OrderDao;
import com.human.dto.OrderDto;
import com.human.util.ICommand;

public class Orders_SelectSearchCommand implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("Select작업");
		
		String sc = request.getParameter("search_select");
		String sc2 = request.getParameter("search");
		if(sc.equals("productname")) {
			OrderDao dao = new OrderDao();
			ArrayList<OrderDto> AllDtos=dao.selectname(sc2);
			request.setAttribute("AllDtos",AllDtos);
			
		}else if(sc.equals("orderid")) {
			OrderDao dao = new OrderDao();
			ArrayList<OrderDto> AllDtos=dao.selectid(sc2);
			request.setAttribute("AllDtos",AllDtos);
		}
		
		
		
		
	
	}

}
