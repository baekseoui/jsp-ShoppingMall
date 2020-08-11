package com.human.command.mypage;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.CustomersDao;
import com.human.dao.MemberDao;
import com.human.dto.CustomersDto;


public class PersonalInfoSelectCommand implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String customerID = (String) session.getAttribute("login_Id");
		System.out.println("customerID"+customerID);
		CustomersDao dao = new CustomersDao();
		ArrayList<CustomersDto> dtos = dao.select(customerID);
		request.setAttribute("list", dtos);
		MemberDao mDao = new MemberDao();
		request.setAttribute("passInfo", mDao.findPwd(dtos.get(0).getCustomerID()));
		
	}

}
