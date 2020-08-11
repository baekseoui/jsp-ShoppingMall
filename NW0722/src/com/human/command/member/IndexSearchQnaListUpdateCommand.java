package com.human.command.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.BoardDao;
import com.human.dto.BoardProductDto;

public class IndexSearchQnaListUpdateCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		BoardDao bDao = new BoardDao();
		String boardContent = request.getParameter("boardContent");
		int boardNum = Integer.parseInt((String)request.getParameter("boardNum"));
		bDao.updateQnaList(boardContent, boardNum);
		request.setAttribute("bProductDtos",boardContent);

	}

}
