package com.human.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.QnaDao;
import com.human.util.ICommand;


public class qna_answer_delete_command implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String deleteData[] = request.getParameterValues("answer_updateData");
		
		
		QnaDao dao = new QnaDao();
		if (deleteData != null) {
			System.out.println("들어옴");
			for (String boardNum : deleteData) {
				dao.board_delete(boardNum);
			}
		} else {
			System.out.println("delete입력 null");
		}

	}
}
