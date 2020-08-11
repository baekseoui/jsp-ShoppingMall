package com.human.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.human.command.member.CartListOrderCommand;
import com.human.command.member.FindIDCommand;
import com.human.command.member.FindPwCommand;
import com.human.command.member.IdCheckCommand;
import com.human.command.member.Index1By1PageCommand;
import com.human.command.member.Index9Command;
import com.human.command.member.IndexSearchQnaListDeleteCommand;
import com.human.command.member.IndexSearchQnaListPageCommand;
import com.human.command.member.IndexSearchQnaListUpdateCommand;
import com.human.command.member.MemberCommand;
import com.human.command.member.MyQnaPageCommand;
import com.human.command.member.NewJoinCommand;
import com.human.command.member.NewLoginCommand;
import com.human.command.member.NoticeCommand;
import com.human.command.member.OrderSelectCommand;
import com.human.command.member.QnaBoardListCommand;
import com.human.command.member.QnaBoardReplyCommand;
import com.human.command.member.QnaCommand;
import com.human.command.member.QnaInsertCommand;
import com.human.command.member.ReviewDeleteCommand;
import com.human.command.member.ReviewInsertCommand;
import com.human.command.member.ReviewUpdateCommand;
import com.human.command.member.ReviewUpdateOkCommand;
import com.human.command.member.User_selectCommand;
import com.human.mail.MailSend;

/**
 * Servlet implementation class idCheckServlet
 */
@WebServlet("*.so")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MemberController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");

		MemberCommand bCom = null;

		// 사용자에게 보여줄 view 설정
		String viewPage = null;

		String uri = request.getRequestURI();
		System.out.println(uri);

		String conPath = request.getContextPath();
		System.out.println(conPath);

		String com = uri.substring(conPath.length());
		System.out.println(com);

		if (com.equals("/idCheck.so")) {
			//ID중복체크
			viewPage = "member/signup_CheckId.jsp";
			bCom = new IdCheckCommand();
			bCom.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} else if (com.equals("/member/signupNew.so")) {
			//회원가입
			viewPage = "main_Newjoin.jsp";
			bCom = new NewJoinCommand();
			bCom.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} else if (com.equals("/member/login.so")) {
			//로그인
			bCom = new NewLoginCommand();
			bCom.execute(request, response);
			String temp = (String) request.getAttribute("temp");

			if (temp == "1") {
				String name = (String) request.getAttribute("name");
				String rank = (String) request.getAttribute("rank");
				String id = (String) request.getAttribute("id");
				HttpSession session = request.getSession();

				session.setAttribute("login_Name", name);
				session.setAttribute("login_Id", id);
				session.setAttribute("login_Rank", rank);

				session.setMaxInactiveInterval(10000);// 세션 유지 시간 자주 꺼져서 오래써봐야 의미없음
				response.sendRedirect("../main/main.jsp");
			} else {
				viewPage = "../member/main_login_fail.jsp";
				response.sendRedirect("../member/main_login_fail.jsp");
			}
		} else if (com.equals("/logout.so")) {
			//로그아웃
			viewPage = "main.jsp";
			HttpSession session = request.getSession();
			session.invalidate();
			response.sendRedirect("main/main.jsp");

		} else if (com.equals("/manager/logout.so")) {
			//관리자 페이지 로그아웃
			viewPage = "main.jsp";
			HttpSession session = request.getSession();
			session.invalidate();
			response.sendRedirect("../main/main.jsp");

		} else if (com.equals("/member/mainPwdFindPage.so")) {
			// 비밀번호 찾기 
			bCom = new FindPwCommand();
			bCom.execute(request, response);

			if (request.getAttribute("newPw") == null) {
				
				viewPage = "main_Pwd_Check_fail.jsp";
			} else {
				// 메일 작업
				String address = (String) request.getAttribute("newEmail");
				String pwForSend = (String) request.getAttribute("newPw");
				MailSend mailSend = new MailSend();
				mailSend.PWmailSend(address, pwForSend);

				viewPage = "main_Pwd_Check_Succeed.jsp";
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);

		} else if (com.equals("/member/mainIDFindPage.so")) {
			// 아이디 찾기 
			bCom = new FindIDCommand();
			bCom.execute(request, response);

			if (request.getAttribute("newID") == null) {
				viewPage = "main_Id_Check_fail.jsp";
			} else {
				// 메일 작업
				String address = (String) request.getAttribute("newEmail");
				String IDForSend = (String) request.getAttribute("newID");
				System.out.println("메일작업 \n" + address + "\n" + IDForSend);
				MailSend mailSend = new MailSend();
				mailSend.IDmailSend(address, IDForSend);

				viewPage = "main_Id_Check_Succeed.jsp";
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);

		} else if (com.equals("/member/myqna_view.so")) {
			//고객센터 - 나의문의내역
			viewPage = "customer8_myqna.jsp";
			bCom = new MyQnaPageCommand();
			bCom.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} else if (com.equals("/cart/login.so")) {
			//장바구니 진입시 로그인체크
			bCom = new NewLoginCommand();
			bCom.execute(request, response);
			String temp = (String) request.getAttribute("temp");

			if (temp == "1") {
				String name = (String) request.getAttribute("name");
				String rank = (String) request.getAttribute("rank");
				String id = (String) request.getAttribute("id");
				HttpSession session = request.getSession();
				session.setAttribute("login_Name", name);
				session.setAttribute("login_Rank", rank);
				session.setAttribute("login_Id", id);
				System.out.println("login_Id : " + id);
				session.setMaxInactiveInterval(10000);// 세션 유지 시간 자주 꺼져서 오래써봐야 의미없음
				response.sendRedirect("../cart/cartSelect.po");
			} else {
				viewPage = "../member/main_login_fail.jsp";
				response.sendRedirect("../member/main_login_fail.jsp");
			}
		}else if (com.equals("/member/notice_view.so")) {
			//footer 공지사항
			viewPage = "notice.jsp";
			bCom = new NoticeCommand();
			bCom.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(com.equals("/myPage/index9.so")) {
			//myPage 상품평내역
			viewPage="/myPage/index9.jsp";
			System.out.println("00");
			bCom=new Index9Command();
			bCom.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);				
		}else if(com.equals("/myPage/index9_2.so")) {
			//myPage 상품평쓰기
			viewPage="/myPage/index9.so";
			System.out.println("9-2");
			bCom=new ReviewInsertCommand();
			bCom.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);	
		}else if(com.equals("/myPage/index9_update.so")) {
			//myPage 상품평 수정 
			System.out.println("1");
			bCom=new ReviewUpdateCommand();
			viewPage="/myPage/index9_1.jsp";
			bCom.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(com.equals("/myPage/reviewUpdate.so")) {
			//myPage 상품평 수정완료
			System.out.println("2");
			bCom=new ReviewUpdateOkCommand();
			viewPage="/myPage/index9.so";
			System.out.println("3");
			bCom.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(com.equals("/myPage/index9_delete.so")) {
			//myPage 상품평삭제
			System.out.println("delete");
			bCom=new ReviewDeleteCommand();
			viewPage="/myPage/index9.so";
			System.out.println("4");
			bCom.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(com.equals("/myPage/index8.so")) {
			//myPage 상품평쓰기 선택
			System.out.println("0");
			bCom=new OrderSelectCommand();
			viewPage="/myPage/index8.jsp";
			bCom.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(com.equals("/board/qnaBoard.so")){
			//productDetails 상품문의 글쓰기			
			bCom = new QnaCommand();
			bCom.execute(request, response);
			response.sendRedirect("askqna.jsp?check=1");
		}else if (com.equals("/myPage/indexSearchQnaList_view.so")) {
			//myPage 상품문의내역 확인
			viewPage = "indexSearch.jsp";
			bCom = new IndexSearchQnaListPageCommand();
			bCom.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if (com.equals("/myPage/indexqna1by1_view.so")) {
			//myPage 일대일문의내역 확인
			viewPage = "indexqna1by1.jsp";
			bCom = new Index1By1PageCommand();
			bCom.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} else if (com.equals("/myPage/qnaUpdate.so")) {
			//myPage 상품문의내역 수정
			viewPage = "indexSearchQnaList_view.so";
			bCom = new IndexSearchQnaListUpdateCommand();
			bCom.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} else if (com.equals("/myPage/qnaDelete.so")) {
			//myPage 상품문의내역 삭제
			viewPage = "indexSearchQnaList_view.so";
			bCom = new IndexSearchQnaListDeleteCommand();
			bCom.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(com.equals("/member/select_goods.so")){
			//고객센터 일대일문의 중 상품선택버튼
			viewPage = "select_goods.jsp";
			bCom = new User_selectCommand();
			System.out.println("select_goods.jsp연결");
			bCom.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(com.equals("/member/select_goods2.so")){
			//고객센터 일대일문의 중 상품선택->장바구니 탭
			viewPage = "select_goods2.jsp";
			bCom = new CartListOrderCommand();
			System.out.println("select_goods2.jsp연결");
			bCom.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else if(com.equals("/member/customer7_1by1.so")){
			//고객센터 일대일문의
			viewPage = "customer7_1by1.jsp";
			bCom = new User_selectCommand();
			bCom.execute(request, response);
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);	
		}else if(com.equals("/member/customer_inquiry.so")) {
			//footer 일대일문의
			viewPage= "myqna_view.so";
			bCom=new QnaInsertCommand();
			bCom.execute(request, response);
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
