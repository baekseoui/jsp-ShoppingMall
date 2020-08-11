package com.human.manager;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.EmployeesDao;
import com.human.dao.PageDao;
import com.human.dto.EmployeesDto;
import com.human.dto.PageDto;


public class Employees_SelectSearchCommand implements Employees_ICommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("Select작업");
		
		String sc = request.getParameter("search_select");
		String sc2 = request.getParameter("search");
	
		if(sc.equals("사원명")) {
			EmployeesDao dao = new EmployeesDao();
			ArrayList<EmployeesDto> dtos=dao.selectname(sc2);
			request.setAttribute("dtos",dtos);
		}else if(sc.equals("사원번호")) {
			EmployeesDao dao = new EmployeesDao();
			ArrayList<EmployeesDto> dtos=dao.selectid(sc2);
			request.setAttribute("dtos",dtos);
		}
		
		
		
		
	
	}

}
