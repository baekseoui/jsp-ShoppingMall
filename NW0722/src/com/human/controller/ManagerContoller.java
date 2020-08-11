package com.human.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.manager.Chat_Select_Commend;
import com.human.manager.ClientCheck_Delete_Commend;
import com.human.manager.ClientCheck_Insert_Commend;
import com.human.manager.ClientCheck_Select_Commend;
import com.human.manager.ClientCheck_Update_Commend;
import com.human.manager.ClientCheck_search_select_commend;
import com.human.manager.Customer_Delete_Commend;
import com.human.manager.Customer_Insert_Commend;
import com.human.manager.Customer_Select_Commend;
import com.human.manager.Customer_Update_Commend;
import com.human.manager.Employees_DeleteCommand;
import com.human.manager.Employees_ICommand;
import com.human.manager.Employees_InsertCommand;
import com.human.manager.Employees_SelectCommand;
import com.human.manager.Employees_SelectSearchCommand;
import com.human.manager.Employees_UpdateCommand;
import com.human.manager.Orders_SelectSearchCommand;
import com.human.manager.Orders_Select_Command;
import com.human.manager.Products_Delete_Command;
import com.human.manager.Products_Insert_Command;
import com.human.manager.Products_Select_Command;
import com.human.manager.Products_Update_Command;
import com.human.manager.customer_search_select_commend;
import com.human.manager.products_search_select_command;
import com.human.manager.qna_answer_delete_command;
import com.human.manager.qna_answer_insert_command;
import com.human.manager.qna_answer_search_select_command;
import com.human.manager.qna_answer_select_command;
import com.human.manager.qna_answer_update_command;
import com.human.manager.qna_select_command;
import com.human.util.ICommand;

/**
 * Servlet implementation class front
 */
@WebServlet("*.do")
public class ManagerContoller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ManagerContoller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		String uri = request.getRequestURI(); // 주소 이름
		// 원하는 주소에 대한 처리 방법
		String conPath = request.getContextPath(); // 프로젝트가 위치한 폴더

		String command = uri.substring(conPath.length());
		ICommand ic = null;
		String viewPage = "null";
		
	
		String com = uri.substring(conPath.length());
		System.out.println(com);
		
		Employees_ICommand Eic = null;
		
		
		
		// Object
		int check = 0;

		if (command.equals("/manager/productSelect.do")) {
			viewPage = "products.jsp";
			ic = new Products_Select_Command();
			ic.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);

		} else if (command.equals("/manager/product_input.do")) {

			if (request.getParameter("product_insert") != null) {
				viewPage = "/manager/productSelect.do?page=1";
				ic = new Products_Insert_Command();
				ic.execute(request, response);
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			} else if (request.getParameter("product_update") != null) {

				viewPage = "/manager/productSelect.do?page=1";
				ic = new Products_Update_Command();
				ic.execute(request, response);
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);

			} else if (request.getParameter("product_delete") != null) {
				// 아직 orderdetails 정보를 삭제 해도 되는지 몰라 구현 안해놓음
				viewPage = "/manager/productSelect.do?page=1";
				ic = new Products_Delete_Command();
				ic.execute(request, response);
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			}
		} else if (command.equals("/manager/product_search.do")) {

			String st = request.getParameter("search_enter");

			if (st != null) {
				viewPage = "products.jsp";
				ic = new products_search_select_command();
				ic.execute(request, response);
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			}

		}

		// Customer

		else if (command.equals("/manager/Customer_Insert.do")) {
			viewPage = "/manager/Customer_Select.do?page=1";
			ic = new Customer_Insert_Commend();
			ic.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} else if (command.equals("/manager/Customer_Select.do")) {

			viewPage = "Customer.jsp";
			ic = new Customer_Select_Commend();
			ic.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}

		else if (command.equals("/manager/Customer_Input.do")) {
			String input_Name = request.getParameter("input_Name");

			if (input_Name.equals("수정")) {
				ic = new Customer_Update_Commend();
			} else if (input_Name.equals("삭제")) {
				ic = new Customer_Delete_Commend();
			}
			viewPage = "/manager/Customer_Select.do?page=1";

			ic.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} else if (command.contentEquals("/manager/customer_search.do")) {

			viewPage = "Customer.jsp";
			ic = new customer_search_select_commend();
			ic.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}

		//
		// qna

		else if (command.contentEquals("/manager/qna_select.do")) {
			viewPage = "qna.jsp";
			ic = new qna_select_command();
			ic.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);

		} else if (command.contentEquals("/manager/anwser_search.do")) {

			String st = request.getParameter("search_enter");

			if (st != null) {
				viewPage = "qna.jsp";
				ic = new qna_answer_search_select_command();
				ic.execute(request, response);
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			}

		}

		else if (command.contentEquals("/manager/qna_answer.do")) {
			System.out.println("들어옴");
			int boardStep = Integer.parseInt(request.getParameter("boardStep"));
			System.out.println(boardStep);
			if (Integer.parseInt(request.getParameter("boardStep")) == 0) {
				viewPage = "qna_answer.jsp";
				ic = new qna_answer_select_command();
				ic.execute(request, response);
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			} else {
				viewPage = "qna_answer2.jsp";
				ic = new qna_answer_select_command();
				ic.execute(request, response);
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);

			}

		} else if (command.contentEquals("/manager/qna_answer2_table.do")) {
			System.out.println("커맨드");
			viewPage = "/manager/qna_select.do?page=1";
			ic = new qna_answer_update_command();
			ic.execute(request, response);
			check = 1;
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} else if (command.contentEquals("/manager/qna_input.do")) {

			if (request.getParameter("qna_delete") != null) {
				viewPage = "/manager/qna_select.do?page=1";
				ic = new qna_answer_delete_command();
				ic.execute(request, response);
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			}
		} else if (command.contentEquals("/manager/qna_answer_table.do")) {

			viewPage = "/manager/qna_select.do?page=1";
			ic = new qna_answer_insert_command();
			ic.execute(request, response);
			check = 1;

			if (check != 1) {
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			} else {
				viewPage = "../manager/qna_select.do?page=1";
				response.sendRedirect(viewPage);
			}
		}

		//
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		// Employees
		else if (command.equals("/manager/Employees_Select.do")) {
			viewPage = "employees.jsp";
			System.out.println("select.do");
			Eic = new Employees_SelectCommand();
			Eic.excute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);

		} else if (command.equals("/manager/employee_enter.do")) {
			String st = request.getParameter("insert");
			String st2 = request.getParameter("delete");
			String st3 = request.getParameter("update");
			viewPage = "/manager/Employees_Select.do?page=1";

			if (st != null) {

				Eic = new Employees_InsertCommand();
				Eic.excute(request, response);
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			} else if (st2 != null) {
				Eic = new Employees_DeleteCommand();
				Eic.excute(request, response);
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			} else if (st3 != null) {
				Eic = new Employees_UpdateCommand();
				Eic.excute(request, response);
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			}

		} else if (command.equals("/manager/employees_search.do")) {

			viewPage = "employees.jsp";
			String sc = request.getParameter("search_select");
			Eic = new Employees_SelectSearchCommand();
			Eic.excute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);

		}

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		// ClientCheckPage

		else if (command.equals("/ClientCheck_Insert.do")) {

			viewPage = "/manager/ClientCheck_Select.do?page=1";
			ic = new ClientCheck_Insert_Commend();
			ic.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} else if (command.equals("/manager/ClientCheck_Select.do")) {
			System.out.println("ClientCheckPage");
			viewPage = "ClientCheckPage.jsp";
			ic = new ClientCheck_Select_Commend();
			ic.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}

		else if (command.equals("/manager/ClientCheck_Input.do")) {
			System.out.println("ClientCheck_Input");
			String input_Name = request.getParameter("input_Name");
			System.out.println(input_Name);
			if (input_Name.equals("수정")) {
				ic = new ClientCheck_Update_Commend();
			} else if (input_Name.equals("삭제")) {
				ic = new ClientCheck_Delete_Commend();
			}
			viewPage = "/manager/ClientCheck_Select.do";

			ic.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} else if (command.contentEquals("/manager/ClientCheck_search.do")) {
			System.out.println("ClientCheck");
			viewPage = "ClientCheckPage.jsp";
			ic = new ClientCheck_search_select_commend();
			ic.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} else if (command.equals("/manager/ClientCheck_enter.do")) {
			String st = request.getParameter("insert");
			String st2 = request.getParameter("delete");
			String st3 = request.getParameter("update");
			viewPage = "/manager/ClientCheck_Select.do?page=1";

			if (st != null) {
				System.out.println("insert");
				ic = new ClientCheck_Insert_Commend();
				ic.execute(request, response);
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			} else if (st2 != null) {
				System.out.println("delete");
				ic = new ClientCheck_Delete_Commend();
				ic.execute(request, response);
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			} else if (st3 != null) {
				System.out.println("update");
				ic = new ClientCheck_Update_Commend();
				ic.execute(request, response);
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
				dispatcher.forward(request, response);
			}

		}

		
		
		
		// orders
		else if (command.equals("/manager/Order_select.do")) {
			viewPage = "orders.jsp";
			ic = new Orders_Select_Command();
			ic.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);

		} else if (command.equals("/manager/Order_search.do")) {
			viewPage = "orders.jsp";
			ic = new Orders_SelectSearchCommand();
			ic.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);

		}
		//Cahtting
				else if(command.equals("/manager/Chat_Select.do")) {
				
					viewPage = "Chat_Ajax.jsp";
					ic = new Chat_Select_Commend();
					ic.execute(request,response);
					RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
					dispatcher.forward(request, response);
				}

		
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
