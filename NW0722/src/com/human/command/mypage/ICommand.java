package com.human.command.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface ICommand {
	void execute(HttpServletRequest request, HttpServletResponse response);
	
}
