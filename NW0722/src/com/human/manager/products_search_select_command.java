package com.human.manager;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.ProductsDao;
import com.human.dto.ProductsDto;

import com.human.util.ICommand;

public class products_search_select_command implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

	
		String product_select = request.getParameter("search_select"); 
		String search = request.getParameter("search");
		
		
		
		if(product_select.equals("productName")) {
			ProductsDao dao = new ProductsDao();
			ArrayList<ProductsDto> dtos = dao.productNameSelect(search);
			request.setAttribute("dtos",dtos);	
		}else if(product_select.equals("productId")) {
			ProductsDao dao = new ProductsDao();
			ArrayList<ProductsDto> dtos = dao.productIDSelect(search);
			request.setAttribute("dtos",dtos);
		}else if(product_select.equals("categoryId")) {
			ProductsDao dao = new ProductsDao();
			ArrayList<ProductsDto> dtos = dao.categoryIdSelect(search);
			request.setAttribute("dtos",dtos);
		}
			
	}

}
