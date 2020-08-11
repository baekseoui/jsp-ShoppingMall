package com.human.command.mypage;


import java.util.ArrayList;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.LookupDateDao;
import com.human.dto.LookupDateDto;

public class SearchCommand implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		LookupDateDao dao = new LookupDateDao();
		ArrayList<LookupDateDto> dtos = dao.select();
		// orderID받아오기
		String orderID_io = request.getParameter("orderID");
		// ID받아오기
		String userID = request.getParameter("userID");
		if (orderID_io == null || orderID_io.equals("")) {
			// 시간으로 조회하기
			String listIndex = request.getParameter("listIndex");
			if (listIndex.equals("-1")) {
				listIndex = "0";
			}
			ArrayList<LookupDateDto> dtosDate = null;
			if (listIndex.equals("1")) {// 최근 1개월
				dtosDate = dao.selectDate(listIndex, userID);
				request.setAttribute("dtos", dtosDate);
			} else if (listIndex.equals("3")) {// 최근 3개월
				dtosDate = dao.selectDate(listIndex, userID);
				request.setAttribute("dtos", dtosDate);
			} else if (listIndex.equals("6")) {// 최근 6개월
				dtosDate = dao.selectDate(listIndex, userID);
				request.setAttribute("dtos", dtosDate);
			} else if (listIndex.equals("0")) {// 전체 기간
				dtosDate = dao.selectDate(userID);
				request.setAttribute("dtos", dtosDate);
			}
			if(dtosDate.isEmpty()) {
				request.setAttribute("messeng", "조회하신 결과는 존재하지 않습니다.");
			}
			
		} else {
			int orderID = Integer.parseInt(orderID_io);
			if (dao.checkOrderID(orderID)) {
				dtos = dao.selectDate(orderID,userID);
				if(dtos.isEmpty()) {
					request.setAttribute("dtos", dtos);
				}else {
					request.setAttribute("messeng", "조회하신 결과는 존재하지 않습니다.");
				}
				
			} else {
				request.setAttribute("messeng", "조회하신 결과는 존재하지 않습니다.");
			}
		}

	}

}
