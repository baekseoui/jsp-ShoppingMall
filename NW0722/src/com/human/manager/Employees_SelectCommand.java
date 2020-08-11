package com.human.manager;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.EmployeesDao;
import com.human.dao.PageDao;
import com.human.dto.EmployeesDto;
import com.human.dto.PageDto;


public class Employees_SelectCommand implements Employees_ICommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("Select작업");
		int page = Integer.parseInt(request.getParameter("page"));
		
		EmployeesDao dao = new EmployeesDao();
		ArrayList<EmployeesDto> dtos=dao.select(page);
		request.setAttribute("dtos",dtos);
		
		
		PageDto dtop = new PageDto();
		PageDao daop = new PageDao();
		
		
		
		int totalCol = 0;
		totalCol = daop.Board_Count("employeeid","employees");
		int totalPage = (totalCol-1)/10+1;										
		int firstPage = ((page-1)/5)*5+1;									//5개씩 출력함  현재 페이지중 첫 페이지
		int lastPage = Math.min(firstPage+4, totalPage);						//5개씩 출력함  현재 페이지중 마지막 페이지
		
		dtop.setFirstPage(firstPage);
		dtop.setLastPage(lastPage);
		dtop.setTotalPage(totalPage);
		
		request.setAttribute("paging", dtop);
		
		
	}

}
