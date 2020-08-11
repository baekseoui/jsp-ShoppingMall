package com.human.command.product;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.ProductDao;
import com.human.dto.ProductDto;

public class ProductDetailsCommand implements ProductCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String productId=request.getParameter("productId");
		ProductDao dao=new ProductDao();
		ProductDto dto=dao.select(productId);
		request.setAttribute("productDto", dto);
	}

}
