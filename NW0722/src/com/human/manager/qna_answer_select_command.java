package com.human.manager;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.QnaDao;
import com.human.dto.QnaDto;
import com.human.util.ICommand;



public class qna_answer_select_command implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
			
			String bNum = request.getParameter("boardNum");
			QnaDao dao = new QnaDao();
			ArrayList<QnaDto> qna_dto = dao.board_select(bNum);
			
			request.setAttribute("qna_dto", qna_dto);
			
			

		}

}
