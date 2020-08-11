package com.human.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.MemberDao;

public class NewJoinCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		System.out.println(id);
		String pwd = request.getParameter("pwd");
		System.out.println(pwd);
		String name = request.getParameter("name");
		System.out.println(name);
		String birth = request.getParameter("birth");
		System.out.println(birth);
		String phoneNum = request.getParameter("phoneNum");
		System.out.println(phoneNum);
		String email = request.getParameter("email");
		System.out.println(email);
		
		String emailInput = request.getParameter("email_Input");
		System.out.println(emailInput);
		
		String emailTemp = email+"@"+emailInput;
		
		
		MemberDao mDao = new MemberDao();
		
		mDao.insertNewJoin(id,pwd,name,birth,phoneNum,emailTemp);
		
		request.setAttribute("name", name);
		
		
	}

}
