package com.human.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.CustomersDao;

import com.human.util.ICommand;

public class Customer_Delete_Commend implements ICommand {

	@Override
	
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String data[] = request.getParameterValues("data");
		System.out.println(data[0]);
		int size = data.length;
		
		for(int i=0;i<size;i++) {
			CustomersDao dao = new CustomersDao();
			dao.delete(data[i]);
		}


	}

}
