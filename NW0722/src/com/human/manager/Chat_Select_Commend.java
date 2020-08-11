package com.human.manager;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.Chatting_Dao;
import com.human.dto.Chatting_Dto;
import com.human.util.ICommand;



public class Chat_Select_Commend implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
	
		Chatting_Dao dao = new Chatting_Dao();
		ArrayList<Chatting_Dto> dtos= dao.Chatting_Select();
		
		request.setAttribute("chat", dtos);

		
	}

}
