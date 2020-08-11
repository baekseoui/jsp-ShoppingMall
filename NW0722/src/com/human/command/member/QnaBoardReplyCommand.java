package com.human.command.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.command.member.MemberCommand;
import com.human.dao.BoardDao;
import com.human.dto.BoardDto;

public class QnaBoardReplyCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {	
		String rBgroup=request.getParameter("rBgroup");
		if (rBgroup==null) {
			rBgroup = "0";
			
		}
		BoardDao rBDao=new BoardDao();
		ArrayList<BoardDto> replyDtos=rBDao.replySelect();
		request.setAttribute("replyDtos", replyDtos);
		

	}

}
