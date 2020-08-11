package com.human.command.mypage;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.LookupDateDao;
import com.human.dto.LookupDateDto;

public class LookupDateCommand implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String userID=request.getParameter("userID");
		LookupDateDao dao=new LookupDateDao();
		ArrayList<LookupDateDto> dtos=dao.selectDate(userID);
		
		request.setAttribute("dtos", dtos);
		request.setAttribute("userID", userID);
	}

}
