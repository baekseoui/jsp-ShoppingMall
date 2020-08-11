package com.human.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.CustomersDao;

import com.human.util.ICommand;

public class Customer_Insert_Commend implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		CustomersDao dao = new CustomersDao();
		String insertData[] = request.getParameterValues("insertData");
	
		dao.insert(insertData);
	}

}
