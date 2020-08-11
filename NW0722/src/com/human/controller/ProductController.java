package com.human.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.command.member.MemberCommand;
import com.human.command.member.QnaBoardListCommand;
import com.human.command.member.QnaBoardReplyCommand;
import com.human.command.product.BeveragesCommand;
import com.human.command.product.CartCommand;
import com.human.command.product.CartDeleteCommand;
import com.human.command.product.CartInsertCommand;
import com.human.command.product.CartListCommand;
import com.human.command.product.CartUpdateCommand;
import com.human.command.product.CondimentsCommand;
import com.human.command.product.ConfectionsCommand;
import com.human.command.product.DairyProductsCommand;
import com.human.command.product.GrainsCerealsCommand;
import com.human.command.product.MeatPoultryCommand;
import com.human.command.product.ProduceCommand;
import com.human.command.product.ProductCommand;
import com.human.command.product.ProductDetailsCommand;
import com.human.command.product.ProductReviewCommand;
import com.human.command.product.SeafoodCommand;
import com.human.command.product.SearchCommand;

/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.po")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public ProductController() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("ProductController");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		ProductCommand bCom = null;
		CartCommand cCom = null;
		ProductCommand dCom=null;
		MemberCommand aCom=null;
		MemberCommand eCom=null;

		// ����ڿ��� ������ view ����
		String viewPage = null;
		String uri = request.getRequestURI();
		System.out.println(uri);
		String conPath = request.getContextPath();
		System.out.println(conPath);
		String com = uri.substring(conPath.length());
		System.out.println(com);

		if (com.equals("/productIndex/Beverages.po")) {
			viewPage = "Beverages.jsp";
			bCom = new BeveragesCommand(); 
			bCom.execute(request, response);
		} else if (com.equals("/productIndex/Condiments.po")) {
			viewPage = "Condiments.jsp";
			bCom = new CondimentsCommand(); // Condiments.
			bCom.execute(request, response);
		} else if (com.equals("/productIndex/Confections.po")) {
			viewPage = "Confections.jsp";
			bCom = new ConfectionsCommand(); // Confections
			bCom.execute(request, response);
		} else if (com.equals("/productIndex/DairyProducts.po")) {
			viewPage = "DairyProducts.jsp";
			bCom = new DairyProductsCommand(); // DairyProducts
			bCom.execute(request, response);
		} else if (com.equals("/productIndex/GrainsCereals.po")) {
			viewPage = "GrainsCereals.jsp";
			bCom = new GrainsCerealsCommand(); // GrainsCereals
			bCom.execute(request, response);
		} else if (com.equals("/productIndex/MeatPoultry.po")) {
			viewPage = "MeatPoultry.jsp";
			bCom = new MeatPoultryCommand(); // MeatPoultry
			bCom.execute(request, response);
		} else if (com.equals("/productIndex/Produce.po")) {
			viewPage = "Produce.jsp";
			bCom = new ProduceCommand(); // Produce
			bCom.execute(request, response);
		} else if (com.equals("/productIndex/Seafood.po")) {
			viewPage = "Seafood.jsp";
			bCom = new SeafoodCommand(); // Seafood
			bCom.execute(request, response);
		} else if (com.equals("/productIndex/searchProduct.po")) {
			viewPage = "../productIndex/searchProduct.jsp";
			bCom = new SearchCommand(); // search
			bCom.execute(request, response);
		} else if (com.equals("/productDetails/productDetails_view.po")) {
			viewPage = "productDetails.jsp";
			bCom = new ProductDetailsCommand(); // search
			bCom.execute(request, response);
			dCom=new ProductReviewCommand();
			dCom.execute(request, response);
			aCom=new QnaBoardListCommand();
			aCom.execute(request, response);
			eCom=new QnaBoardReplyCommand();
			eCom.execute(request, response);
			// cart--------------------------------------------------
		} else if (com.equals("/cart/cartInsert.po")) {
			viewPage = "cartSelect.po";
			System.out.println("장바구니 넣기");
			cCom = new CartInsertCommand();
			cCom.execute(request, response);
		} else if (com.equals("/cart/cartSelect.po")) {
			System.out.println("장바구니 보기");
			viewPage = "cart.jsp";
			cCom = new CartListCommand();
			cCom.execute(request, response);
		} else if (com.equals("/cart/cartDelete.po")) {
			System.out.println("장바구니 삭제");
			viewPage = "/cart/cartSelect.po";
			cCom = new CartDeleteCommand();
			cCom.execute(request, response);
		} else if (com.equals("/cart/cartUpdate.po")) {
			System.out.println("장바구니 수량변경");
			viewPage = "cartSelect.po";
			cCom = new CartUpdateCommand();
			cCom.execute(request, response);
		}
		if (bCom != null || cCom != null || aCom!= null || dCom!= null || eCom!= null) {
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
