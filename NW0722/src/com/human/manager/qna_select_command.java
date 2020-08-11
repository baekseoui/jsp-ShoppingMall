package com.human.manager;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.PageDao;
import com.human.dao.QnaDao;
import com.human.dto.PageDto;
import com.human.dto.QnaDto;
import com.human.util.ICommand;



public class qna_select_command implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int page = Integer.parseInt(request.getParameter("page"));
		
		System.out.println(page);
		QnaDao dao = new QnaDao();
		ArrayList<QnaDto> qna_dto = dao.select(page);
		
		request.setAttribute("qna_dto", qna_dto);
		
		
		PageDto dtop = new PageDto();
		PageDao daop = new PageDao();
		
		int totalCol = daop.Board_Count("boardNum","Board");
		int totalPage = (totalCol-1)/10+1;										
		int firstPage = ((page-1)/5)*5+1;									//5개씩 출력함  현재 페이지중 첫 페이지
		int lastPage = Math.min(firstPage+4, totalPage);						//5개씩 출력함  현재 페이지중 마지막 페이지
		
		dtop.setFirstPage(firstPage);
		dtop.setLastPage(lastPage);
		dtop.setTotalPage(totalPage);
		
		request.setAttribute("paging", dtop);

	}
}

