package com.human.command.product;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.ProductDao;
import com.human.dto.ProductDto;

public class SeafoodCommand implements ProductCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ProductDao ProDao = new ProductDao();
		
		ArrayList<ProductDto> dtos = ProDao.selectSeafood();
		request.setAttribute("dtos", dtos);
	}

}
