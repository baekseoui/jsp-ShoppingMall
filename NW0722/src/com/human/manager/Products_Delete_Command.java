package com.human.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.ProductsDao;

import com.human.util.ICommand;

public class Products_Delete_Command implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String deleteData[] = request.getParameterValues("updateData");

		if (deleteData != null) {
			ProductsDao dao = new ProductsDao();
			
			for (String productId : deleteData) {
				dao.delete(productId);
			}
		} else {
			System.out.println("delete입력 null");
		}

	}
}
