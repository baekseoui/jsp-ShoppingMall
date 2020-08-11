package com.human.manager;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.EmployeesDao;
import com.human.dto.EmployeesDto;

public class Employees_InsertCommand implements Employees_ICommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("Insert작업");
		
		String employeeid = request.getParameter("employeeid");
		String lastname = request.getParameter("lastname");
		String firstname = request.getParameter("firstname");
		String title = request.getParameter("title");
		String titleofcourtesy = request.getParameter("titleofcourtesy");
		String birthdate = request.getParameter("birthdate");
		String hiredate = request.getParameter("hiredate");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String region = request.getParameter("region");
		String postalcode = request.getParameter("postalcode");
		String country = request.getParameter("country");
		String homephone = request.getParameter("homephone");
		String extension = request.getParameter("extension");
		String photo = request.getParameter("photo");
		String notes = request.getParameter("notes");
		String reportsto = request.getParameter("reportsto");
		String photopath = request.getParameter("photopath");

		

		
		
		DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm");
		Date date=null;
		
		try {
			date = (Date)formatter.parse(birthdate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		DateFormat formatter2 = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm");
		Date date2=null;
		try {
			date2 = (Date)formatter2.parse(hiredate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		EmployeesDao dao=new EmployeesDao();
		dao.insert(new EmployeesDto(
				Integer.parseInt(employeeid),lastname,firstname,title,titleofcourtesy,date,date2,
				address,city,region,postalcode,country,homephone,extension,photo,notes,
				Integer.parseInt(reportsto),photopath
			
				));

	}

}
