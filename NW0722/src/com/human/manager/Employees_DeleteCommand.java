package com.human.manager;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.EmployeesDao;

public class Employees_DeleteCommand implements Employees_ICommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("Delete작업");
	

		String deleteData[] =request.getParameterValues("checkData");
		
		if(deleteData!=null){
			EmployeesDao dao=new EmployeesDao();
			for(String name:deleteData){
				dao.delete(name);
			}
		}else {
			System.out.println("delete입력 null");
		}

	}
}
