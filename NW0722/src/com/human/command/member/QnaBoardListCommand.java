package com.human.command.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.BoardDao;
import com.human.dto.BoardDto;
import com.human.dto.QnaBoardSearchDto;
import com.human.dto.QnaDto;

public class QnaBoardListCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String page = request.getParameter("page");
		String pageDataCount = request.getParameter("pageDataCount");

		if (page == null) {
			page = "1";
		}
		if (pageDataCount == null) {
			pageDataCount = "15";
		}

		String searchCol = request.getParameter("searchCol");
		String searchVal = request.getParameter("searchVal");
		if (searchCol == null || searchVal == null) {
			searchCol = "boardTitle";
			searchVal = "";
		}
		if (searchCol.equals("") || searchVal.equals("")) {
			searchCol = "boardTitle";
			searchVal = "";
		}

		System.out.println(page);
		System.out.println(pageDataCount);
		System.out.println(searchCol);
		System.out.println(searchVal);
		
		String productID=request.getParameter("productId");
		if (productID==null) {
			productID = "1";
			
		}
		
		BoardDao bDao = new BoardDao();
		ArrayList<QnaDto> dtos = bDao.searchSelect(page, pageDataCount, searchCol, searchVal, productID);
		request.setAttribute("qnaDtos", dtos);

		int totalDataCount = bDao.qnadataCount(searchCol, searchVal, productID);

		QnaBoardSearchDto bSearchDto = new QnaBoardSearchDto();
		bSearchDto.makePage(Integer.parseInt(page), Integer.parseInt(pageDataCount), totalDataCount, searchCol,
				searchVal, productID);
		request.setAttribute("bSearchDto", bSearchDto);

		System.out.println(bSearchDto);

		

	}

}
