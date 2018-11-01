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
import com.javalec.ex.command.SignMypageCommand;
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
		request.setCharacterEncoding("EUC-KR");
		String viewPage = null;
		SignCommand command = null;
		String uri = request.getRequestURI(); //request.getRequestURI == 프로젝트+파일경로까지 가져옵니다. or getRequestURL()==전체경로를 가져옵니다.
		String conPath = request.getContextPath(); // 프로젝트 path만 열어온다.
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
		}
		
		
		
		
		
		
//			else if(com.equals("/write.do")) {
//			command = new BWriteCommand();
//			command.execute(request, response);
//			viewPage = "list.do";
//		} else if(com.equals("/list.do")) {
//			command = new BListCommand();
//			command.execute(request, response);
//			viewPage = "list.jsp";
//		} else if(com.equals("/content_view.do")){
//			command = new BContentCommand();
//			command.execute(request, response);
//			viewPage = "content_view.jsp";
//		} else if(com.equals("/modify.do")) {
//			command = new BModifyCommand();
//			command.execute(request, response);
//			viewPage = "list.do";
//		} else if(com.equals("/delete.do")) {
//			command = new BDeleteCommand();
//			command.execute(request, response);
//			viewPage = "list.do";
//		} else if(com.equals("/reply_view.do")) {
//			command = new BReplyViewCommand();
//			command.execute(request, response);
//			viewPage = "reply_view.jsp";
//		} else if(com.equals("/reply.do")) {
//			command = new BReplyCommand();
//			command.execute(request, response);
//			viewPage = "list.do";
//		}
		if(viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
		
	}

}
