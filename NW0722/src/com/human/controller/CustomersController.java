package com.human.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.command.mypage.AllDelivStatCommand;
import com.human.command.mypage.CustomerCommand;
import com.human.command.mypage.DelivCancelCommand;
import com.human.command.mypage.DelivStatCommand0;
import com.human.command.mypage.DelivStatCommand1;
import com.human.command.mypage.DelivStatCommand2;
import com.human.command.mypage.GetOrderCommand;
import com.human.command.mypage.ICommand;
import com.human.command.mypage.LookupDateCommand;
import com.human.command.mypage.OrdersBuyNowSelectCommand;
import com.human.command.mypage.OrdersCompleteCommand;
import com.human.command.mypage.OrdersInsertCommand;
import com.human.command.mypage.OrdersSelectCommand;
import com.human.command.mypage.PersonalInfoSelectCommand;
import com.human.command.mypage.PersonalInfoUpdateCommand;
import com.human.command.mypage.SearchCommand;

//import com.human.command.UpdateCommand;

/**
 * Servlet implementation class HumanController
 */
@WebServlet("*.io")
public class CustomersController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CustomersController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println("Uri : " + uri);
		String conPath = request.getContextPath();
		System.out.println("ContextPath : " + conPath);

		String command = uri.substring(conPath.length());
		System.out.println("Command : " + command);

		ICommand ic = null;
		String viewPage = "main.jsp";
		HttpSession session = request.getSession();

		String customerID = (String) session.getAttribute("login_Id");
		System.out.println("### customerID : " + customerID);

		boolean isAdmin = false;//
		if (customerID != null) {
			if (customerID.equals("1") || customerID.equals("2") || customerID.equals("3") || customerID.equals("4")
					|| customerID.equals("5") || customerID.equals("6") || customerID.equals("7")
					|| customerID.equals("8") || customerID.equals("9")) {
				isAdmin = true;// 관리자 확인
				System.out.println("### admin checked, admin can't access this page.");
			}
		}

		if (customerID != null) {
			if (!isAdmin) {
				if (command.equals("/myPage/personalInfoUpdate.io")) {
					ic = new PersonalInfoUpdateCommand();
					ic.execute(request, response);
					viewPage = "personalInfoSelect.io";
				} else if (command.equals("/myPage/personalInfoSelect.io")) {
					ic = new PersonalInfoSelectCommand();
					ic.execute(request, response);
					viewPage = "index5.jsp";
				} else if (command.equals("/myPage/index.io")) {
					viewPage = "index.jsp";
					ic = new CustomerCommand();
					ic.execute(request, response);
				} else if (command.equals("/myPage/indexBd.io")) {
					viewPage = "indexBd.jsp";
					ic = new LookupDateCommand();
					ic.execute(request, response);
				} else if (command.equals("/myPage/indexSub.io")) {
					viewPage = "index.jsp";
					ic = new CustomerCommand();
					ic.execute(request, response);
				} else if (command.equals("/myPage/search.io")) {
					viewPage = "indexBd.jsp";
					ic = new SearchCommand();
					ic.execute(request, response);
				} else if (command.equals("/myPage/ordersSelect.io")) {
					ic = new OrdersSelectCommand();
					ic.execute(request, response);
					viewPage = "mainOrders.jsp";
				} else if (command.equals("/myPage/ordersInsert.io")) {
					ic = new OrdersInsertCommand();
					ic.execute(request, response);
					viewPage = "ordersComplete.io";
				} else if (command.equals("/myPage/findorder.io")) {
					viewPage = "index6.jsp";
					ic = new GetOrderCommand();
					ic.execute(request, response);
				} else if (command.equals("/myPage/DelivStat0.io")) {
					ic = new DelivStatCommand0();
					ic.execute(request, response);
					viewPage = "(N)index2.jsp";
					request.setAttribute("state", 0);
				} else if (command.equals("/myPage/DelivStat1.io")) {
					ic = new DelivStatCommand1();
					ic.execute(request, response);
					viewPage = "(N)index2.jsp";
					request.setAttribute("state", 1);
				} else if (command.equals("/myPage/DelivStat2.io")) {
					ic = new DelivStatCommand2();
					ic.execute(request, response);
					viewPage = "(N)index2.jsp";
					request.setAttribute("state", 2);
				} else if (command.equals("/myPage/AllDelivStat.io")) {
					ic = new AllDelivStatCommand();
					ic.execute(request, response);
					viewPage = "(N)index2.jsp";
					request.setAttribute("state", 3);
				} else if (command.equals("/myPage/searchPeriod.io")) {
					String state = (String) request.getParameter("state");
					System.out.println(
							"############state####################state###############state############# " + state);
//			ic = new SearchPeriod();
//			ic.execute(request, response);
					if (state.equals("0")) {
						viewPage = "DelivStat0.io";
					} else if (state.equals("1")) {
						viewPage = "DelivStat1.io";
					} else if (state.equals("2")) {
						viewPage = "DelivStat2.io";
					} else if (state.equals("3")) {
						viewPage = "AllDelivStat.io";
					}
				} else if (command.equals("/myPage/DelivCancel.io")) {
					String oid = (String) request.getParameter("oid");// url에서 oid획득
					request.setAttribute("oid", oid);// oid를 다시 서버로 넘김
					ic = new DelivCancelCommand();
					ic.execute(request, response);// 해당 클래스에서 oid를 받아서 주문취소 실행
					// 주문취소 알림창
					viewPage = "indexBd.io";// 마이페이지 메인으로 이동
				}else if(command.equals("/myPage/ordersComplete.io")) {
					ic = new OrdersCompleteCommand();
					ic.execute(request, response);
					viewPage="mainOrdersComplete.jsp";
				}else if(command.equals("/myPage/ordersBuyNowSelect.io")) {
					ic = new OrdersBuyNowSelectCommand();
					ic.execute(request, response);
					viewPage="mainOrders.jsp";
				}
			} else {
				viewPage = "/main/main.jsp";
			}
		} else {
			viewPage = "/member/login.so";
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
