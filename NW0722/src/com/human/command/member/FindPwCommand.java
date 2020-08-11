package com.human.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.MemberDao;
import com.human.dto.MemberDto;

public class FindPwCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("Find pw Command 진입");
		MemberDao dao = new MemberDao();
		MemberDto dto = new MemberDto();
		
		dto.setNewID(request.getParameter("id"));
		dto.setNewName(request.getParameter("name"));
		dto.setNewEmail(request.getParameter("email"));
		System.out.println(request.getParameter("id"));
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("email"));
		
		
		String newPw = dao.findPwd(dto.getNewID(), dto.getNewName(), dto.getNewEmail());
		request.setAttribute("newPw", newPw);
		request.setAttribute("newEmail", request.getParameter("email"));
		System.out.println("비밀번호 :"+ newPw);
		System.out.println("Command 완료");
	}

}
