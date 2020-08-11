package com.human.command.product;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.ProductDao;
import com.human.dto.ProductDto;

public class BeveragesCommand implements ProductCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		ProductDao ProDao = new ProductDao();
		ArrayList<ProductDto> dtos = ProDao.selectBeverages();
		request.setAttribute("dtos", dtos);

		
	}


}
