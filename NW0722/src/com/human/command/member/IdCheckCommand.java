package com.human.command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.MemberDao;

public class IdCheckCommand implements MemberCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		String userid = request.getParameter("userid");
		MemberDao mDao = new MemberDao();	
		
		int result = mDao.checkId(userid);
		
		request.setAttribute("userid", userid);
		request.setAttribute("result", result);
			
	}

}
