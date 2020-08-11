package com.human.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.ClientCheckDao;
import com.human.dto.ClientCheckDto;
import com.human.util.ICommand;

public class ClientCheck_Update_Commend implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String supplierId=request.getParameter("supplierId1");
		String companyName=request.getParameter("companyName1");
		String phone=request.getParameter("phone1");
		String address=request.getParameter("address1");
		String contactName=request.getParameter("contactName1");
		String contactTitle=request.getParameter("contactTitle1");
		String city=request.getParameter("city1");
		String region=request.getParameter("region1");
		String postalCode=request.getParameter("postalCode1");
		String country=request.getParameter("country1");
		String fax=request.getParameter("fax1");
		String homepage=request.getParameter("homepage1");
		
		
		
		
		ClientCheckDao dao=new ClientCheckDao();
		System.out.println("dao전");
		
		dao.update(new ClientCheckDto(
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
