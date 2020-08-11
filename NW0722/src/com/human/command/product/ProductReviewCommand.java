package com.human.command.product;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.ReviewDao;
import com.human.dto.ReviewDto;

public class ProductReviewCommand implements ProductCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		ReviewDao rDao=new ReviewDao();
		String productId=request.getParameter("productId");
		ArrayList<ReviewDto> rDtos=rDao.reviewListSelect(productId);
		request.setAttribute("reviewDtos", rDtos);
		
		ArrayList<ReviewDto> dto1 = new ArrayList<ReviewDto>();

		dto1 = rDao.reviewListFileSelect(productId);
		request.setAttribute("dto1", dto1);
	}

}
