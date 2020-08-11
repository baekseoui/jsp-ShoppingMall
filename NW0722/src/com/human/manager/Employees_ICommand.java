package com.human.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Employees_ICommand {
	void excute(HttpServletRequest request,HttpServletResponse response);
	
}
