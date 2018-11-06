package com.javalec.ex.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.dao.SignDao;

public class SignBooleanCommand implements SignCommand {

	@Override
	   public void execute(HttpServletRequest request, HttpServletResponse response) {
	      // TODO Auto-generated method stub
	         
	      String userID = request.getParameter("userID");
	      String userPWD = request.getParameter("userPWD");
	      
	      String viewPage = null;
	      
	      SignDao dao = new SignDao();
	      boolean check;
	      check = dao.Check(userID, userPWD);
	      
	      if(check == true) {
	         System.out.println("Login succeed");
	         viewPage = "Mainlist.do";
	      }else {
	         System.out.println("Login fail");
	         viewPage = "Login.jsp";
	      }
	      
	      if(viewPage != null) {
	         RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	         try {
	            dispatcher.forward(request, response);
	         } catch (ServletException | IOException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	         }
	      }
	      
	   }
}
	
