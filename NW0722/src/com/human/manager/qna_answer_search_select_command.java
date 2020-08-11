package com.human.manager;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.QnaDao;
import com.human.dto.QnaDto;
import com.human.util.ICommand;


public class qna_answer_search_select_command implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String anwser_select = request.getParameter("search_select"); 
		String search = request.getParameter("search");
		
		QnaDao dao = new QnaDao();
		
		if(anwser_select.equals("answer_type")) {
			
			ArrayList<QnaDto> dtos = dao.answer_type_select(search);
			request.setAttribute("qna_dto",dtos);	
		}else if(anwser_select.equals("customerId")) {
			
			ArrayList<QnaDto> dtos = dao.customerId_Select(search);
			request.setAttribute("qna_dto",dtos);
		}
		
	}

}
