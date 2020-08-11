package com.human.manager;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.CustomersDao;
import com.human.dao.ProductsDao;
import com.human.dto.CustomersDto;
import com.human.dto.ProductsDto;

import com.human.util.ICommand;

public class customer_search_select_commend implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String customer_select = request.getParameter("customer_search");
		String search = request.getParameter("customer_val");

		CustomersDao dao = new CustomersDao();

		if (customer_select.equals("customer_id")) {
			ArrayList<CustomersDto> dtos = dao.customer_id_select(search);
			request.setAttribute("dtos", dtos);
		
		} else if (customer_select.equals("customer_name")) {
			ArrayList<CustomersDto> dtos = dao.customer_name_select(search);
			request.setAttribute("dtos", dtos);
		}
	}
}
