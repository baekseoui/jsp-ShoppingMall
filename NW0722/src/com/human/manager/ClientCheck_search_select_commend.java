package com.human.manager;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.ClientCheckDao;
import com.human.dto.ClientCheckDto;
import com.human.util.ICommand;

public class ClientCheck_search_select_commend implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String customer_select = request.getParameter("clientCheck_search");
		String search = request.getParameter("clientCheck_val");
		System.out.println(search);
		System.out.println("search");
		System.out.println(request);
		System.out.println("request");
		ClientCheckDao dao = new ClientCheckDao();

		if (customer_select.equals("clientCheck_id")) {
			ArrayList<ClientCheckDto> dtos = dao.clientCheck_id_select(search);
			request.setAttribute("dtos", dtos);
		
		} else if (customer_select.equals("clientCheck_name")) {
			ArrayList<ClientCheckDto> dtos = dao.clientCheck_name_select(search);
			request.setAttribute("dtos", dtos);
		}
	}
}
