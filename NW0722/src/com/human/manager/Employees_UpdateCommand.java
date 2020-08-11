package com.human.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.EmployeesDao;
import com.human.dto.EmployeesDto;

public class Employees_UpdateCommand implements Employees_ICommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("Update작업");
		

		String updateData[] =request.getParameterValues("checkData");
		
		String updateDataemployeeid=request.getParameter("updateDataemployeeid");
		String updateDatalastname=request.getParameter("updateDatalastname");
		String updateDatafirstname=request.getParameter("updateDatafirstname");
		String updateDatatitle=request.getParameter("updateDatatitle");
		String updateDatatitleofcourtesy=request.getParameter("updateDatatitleofcourtesy");
		String updateDataaddress=request.getParameter("updateDataaddress");
		String updateDatacity=request.getParameter("updateDatacity");
		String updateDataregion=request.getParameter("updateDataregion");
		String updateDatapostalcode=request.getParameter("updateDatapostalcode");
		String updateDatacountry=request.getParameter("updateDatacountry");
		String updateDatahomephone=request.getParameter("updateDatahomephone");
		String updateDataextension=request.getParameter("updateDataextension");	
		String updateDataphoto=request.getParameter("updateDataphoto");
		String updateDatanotes=request.getParameter("updateDatanotes");
		String updateDatareportsto=request.getParameter("updateDatareportsto");
		String updateDataphotopath=request.getParameter("updateDataphotopath");
		
		//EmployeesDao dao2= new EmployeesDao();
		//EmployeesDto dto2= new EmployeesDto();
		//02
		
		if(updateData!=null){
			EmployeesDao dao=new EmployeesDao();
			
				
				dao.update(updateData[0],updateDatalastname,updateDatafirstname
						,updateDatatitle,updateDatatitleofcourtesy,updateDataaddress
						,updateDatacity,updateDataregion
						,updateDatapostalcode,updateDatacountry,updateDatahomephone
						,updateDataextension,updateDataphoto,updateDatanotes,updateDatareportsto
						,updateDataphotopath);
			
		}
		
		
		

	}
}