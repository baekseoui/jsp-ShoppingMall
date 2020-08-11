package com.human.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.BoardDao;

public class IndexSearchQnaListDeleteCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		BoardDao bDao = new BoardDao();
		int boardNum = Integer.parseInt((String)request.getParameter("boardNum"));
		bDao.deleteQnaList(boardNum);

	}

}
