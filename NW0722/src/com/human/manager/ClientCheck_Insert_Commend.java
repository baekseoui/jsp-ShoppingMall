package com.human.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.ClientCheckDao;
import com.human.dto.ClientCheckDto;
import com.human.util.ICommand;

public class ClientCheck_Insert_Commend implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("insert작업");
		String supplierId="0";
		String companyName=request.getParameter("companyName");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String contactName=request.getParameter("contactName");
		String contactTitle=request.getParameter("contactTitle");
		String city=request.getParameter("city");
		String region=request.getParameter("region");
		String postalCode=request.getParameter("postalCode");
		String country=request.getParameter("country");
		String fax=request.getParameter("fax");
		String homepage=request.getParameter("homepage");
		
		
		
		
		ClientCheckDao dao=new ClientCheckDao();
		System.out.println("dao전");
		dao.insert(new ClientCheckDto(
				supplierId,
				companyName,
				phone,
				address,
				contactName,
				contactTitle,
				city,
				region,
				postalCode,
				country,
				fax,
				homepage
				
				));
		System.out.println("dao후");
	}

}
