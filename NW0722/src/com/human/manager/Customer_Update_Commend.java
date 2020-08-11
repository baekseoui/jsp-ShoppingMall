package com.human.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.CustomersDao;

import com.human.util.ICommand;

public class Customer_Update_Commend implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	
	
		CustomersDao dao = new CustomersDao();
		String updateData[] = request.getParameterValues("updateData");
		String updateId = (String) request.getParameter("data");
		
		System.out.println(updateData[0]);
		System.out.println(updateId);
		dao.update(updateId,updateData);

	}

}
