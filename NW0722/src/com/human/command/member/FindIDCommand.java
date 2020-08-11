package com.human.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.MemberDao;
import com.human.dto.MemberDto;

public class FindIDCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("Find ID Command 진입");
		MemberDao dao = new MemberDao();
		MemberDto dto = new MemberDto();
		
		// jsp브라우저에서 입력한 값들 받아오기
		dto.setNewName(request.getParameter("name"));
		dto.setNewEmail(request.getParameter("email"));
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("email"));
		
		// DAO클래스에 있는 findID메소드 실행. 
		String newID = dao.findID(dto.getNewName(), dto.getNewEmail());
		request.setAttribute("newID", newID);
		request.setAttribute("newEmail", request.getParameter("email"));
		System.out.println("사용자의 아이디 :"+ newID);
		System.out.println("Command 완료");
	}

}
