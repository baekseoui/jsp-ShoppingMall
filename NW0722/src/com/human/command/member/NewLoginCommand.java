package com.human.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.MemberDao;
import com.human.dto.MemberDto;

public class NewLoginCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		MemberDao mDao = new MemberDao();
		MemberDto lDto = new MemberDto();
		
		String temp = mDao.login(id,pwd,lDto);
		
		String name =lDto.getNewName();
		String rank =lDto.getNewRank();
		String id1 =lDto.getNewID();
		
		request.setAttribute("temp", temp);
		request.setAttribute("name", name);
		request.setAttribute("rank", rank);
		request.setAttribute("id", id1);
		
	}

}
