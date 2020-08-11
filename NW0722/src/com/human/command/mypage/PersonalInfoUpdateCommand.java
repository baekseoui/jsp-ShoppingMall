package com.human.command.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.dao.CustomersDao;
import com.human.dao.MemberDao;
import com.human.dto.CustomersDto;
import com.human.dto.MemberDto;

public class PersonalInfoUpdateCommand implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String customerID = (String) session.getAttribute("login_Id");

		CustomersDao dao = new CustomersDao();
//		System.out.println("compayName:"+request.getParameter("companyName"));
//		String uCustomerID [] = request.getParameterValues("userID");
//		String uCompanyName [] = request.getParameterValues("companyName");
		String uContactName = request.getParameter("contactName");
		String uContactTitle = request.getParameter("contactTitle");
		String uAddress = request.getParameter("address");
		String uCity = request.getParameter("city");
		String uRegion = request.getParameter("region");
		String uPostalCode = request.getParameter("postalCode");
		String uCountry = request.getParameter("country");
		String uPhone = request.getParameter("phone");
		String uFax = request.getParameter("fax");

		CustomersDto dto = new CustomersDto();
		dto.setCustomerID(customerID);
		dto.setCompanyName(request.getParameter("companyName"));
		dto.setContactName(uContactName);
		dto.setContactTitle(uContactTitle);
		dto.setAddress(uAddress);
		dto.setCity(uCity);
		dto.setRegion(uRegion);
		dto.setPostalCode(uPostalCode);
		dto.setCountry(uCountry);
		dto.setPhone(uPhone);
		dto.setFax(uFax);
		// dao.update(dto);
		int returnValue = dao.update(dto);
		System.out.println("update :" + returnValue);
		
		MemberDao mDao = new MemberDao();
//		String newNum = request.getParameter("newNum");
//		String newID = request.getParameter("newID");
		String newPw = request.getParameter("passInfo");
		
		if(newPw!=null) {
			System.out.println("newPW : "+newPw);
	//		String newName = request.getParameter("newName");
	//		String newDate = request.getParameter("newDate");
	//		String newPhone = request.getParameter("newPhone");
	//		String newEmail = request.getParameter("newEmail");
	//		String newRank = request.getParameter("newRank");
	//		String newDel = request.getParameter("newDel");
	//		String newEtc1 = request.getParameter("newEtc1");
			
			MemberDto mDto = new MemberDto();
			mDto.setNewID(customerID);
			mDto.setNewPw(newPw);
	////		mDto.setNewName(newName);
	//		mDto.setNewDate(newDate);
	//		mDto.setNewPhone(newPhone);
	//		mDto.setNewEmail(newEmail);
	//		mDto.setNewRank(newRank);
	//		mDto.setNewDel(newDel);
	//		mDto.setNewEtc1(newEtc1);
			
			
			int passReturnValue = mDao.update(mDto);
			System.out.println("new customers table updated? : " + passReturnValue);
		}
	}

}
