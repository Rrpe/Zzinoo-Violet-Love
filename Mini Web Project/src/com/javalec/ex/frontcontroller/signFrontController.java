package com.javalec.ex.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.command.SignBooleanCommand;
import com.javalec.ex.command.SignCommand;
import com.javalec.ex.command.SignListCommand;
import com.javalec.ex.command.SignMypageCommand;
import com.javalec.ex.command.SignUserModifyCommand;
import com.javalec.ex.command.SignWriteCommand;

/**
 * Servlet implementation class signFrontController
 */
@WebServlet("*.sign")
public class signFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet");
		actionSign(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost");
		actionSign(request, response);
	}
	
	private void actionSign(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionSign");
		request.setCharacterEncoding("UTF-8");
		String viewPage = null;
		SignCommand command = null;
		String uri = request.getRequestURI(); //request.getRequestURI == ������Ʈ+���ϰ�α��� �����ɴϴ�. or getRequestURL()==��ü��θ� �����ɴϴ�.
		String conPath = request.getContextPath(); // ������Ʈ path�� ����´�.
		String com = uri.substring(conPath.length());
		if(com.equals("/sign.sign")) {
	         command = new SignWriteCommand();
	         command.execute(request, response);
	         viewPage = "Login.jsp";
	      }else if(com.equals("/main.sign")) {
	         command = new SignBooleanCommand();
	         command.execute(request, response);
	      }else if(com.equals("/Mypage.sign")) {
	         command = new SignMypageCommand();
	         command.execute(request, response);
	         viewPage = "Mypage.jsp";
	      }else if(com.equals("/listMypage.sign")) {
	         command = new SignListCommand();
	         command.execute(request, response);
	         viewPage = "Mypage.sign";
	      }else if(com.equals("/usermodify.sign")) {
	         command = new SignUserModifyCommand();
	         command.execute(request, response);
	         viewPage = "listMypage.sign";
	      }
		
		
		
		if(viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
		
	}

}
