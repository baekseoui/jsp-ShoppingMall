package com.human.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.QnaDao;
import com.human.util.ICommand;



public class qna_answer_insert_command implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		QnaDao dao = new QnaDao();
		
		String boardNum = request.getParameter("boardNum");
		String boardOption = request.getParameter("boardOption");
		String boardAnswered = request.getParameter("boardAnswered");
		String boardTitle = request.getParameter("qna_reply_title");
		String customerID = request.getParameter("customerID");
		//String boardDate = request.getParameter("boardDate");
		String boardContent = request.getParameter("qna_reply");
		String boardHit = request.getParameter("boardHit");
		String boardCondition = request.getParameter("boardCondition");
		String orderID = request.getParameter("orderID");
		String boardGroup = request.getParameter("boardGroup");
		String boardStep = request.getParameter("boardStep");
		String boardIndent = request.getParameter("boardIndent");
		String boardDel = request.getParameter("boardDel");
		String productID = request.getParameter("productID");
		String boardEtc1 = request.getParameter("boardEtc1");
		System.out.println("여기까지 1");
		dao.answer_insert(boardNum,boardOption,boardAnswered,boardTitle,customerID,
				boardContent,boardHit,boardCondition,orderID,boardGroup,
				boardStep,boardIndent,boardDel,productID,boardEtc1);
		
	}

	
}
