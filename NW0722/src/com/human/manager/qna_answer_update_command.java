package com.human.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.QnaDao;
import com.human.util.ICommand;



public class qna_answer_update_command implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String boardGroup = request.getParameter("boardGroup");
		String boardStep = request.getParameter("boardStep");
		String boardContent = request.getParameter("update_content");
		
		System.out.println("업데이트");
		
		QnaDao dao = new QnaDao();
		
		dao.answer2_update(boardGroup, boardStep,boardContent);
	}

}
