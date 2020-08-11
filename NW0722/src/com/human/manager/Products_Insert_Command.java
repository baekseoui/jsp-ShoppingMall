package com.human.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.ProductsDao;
import com.human.dto.ProductsDto;

import com.human.util.ICommand;

public class Products_Insert_Command implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("Insert작업");
		
		int productID = Integer.parseInt(request.getParameter("productId"));
		String productName = request.getParameter("productName");
		int supplierID	= Integer.parseInt(request.getParameter("supplierId"));
		int categoryID = Integer.parseInt(request.getParameter("categoryId"));
		String quantityPerUnit = request.getParameter("quantityPerUnit");
		double unitPrice = Double.parseDouble(request.getParameter("unitPrice"));
		int unitsInStock = Integer.parseInt(request.getParameter("unitsInStock"));
		int unitsOnOrder = Integer.parseInt(request.getParameter("unitsOnOrder"));
		int reorderLevel = Integer.parseInt(request.getParameter("reorderLevel"));
		int discontinued = Integer.parseInt(request.getParameter("discontinued"));
		
		
		ProductsDao dao=new ProductsDao();
		dao.insert(new ProductsDto(productID,productName,supplierID,categoryID,
				quantityPerUnit,unitPrice,unitsInStock,unitsOnOrder,reorderLevel,discontinued
				));

	}
}
