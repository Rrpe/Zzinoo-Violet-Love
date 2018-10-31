package com.javalec.ex.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.dao.SignDao;

public class SignBooleanCommand implements SignCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		   
		String userID = request.getParameter("userID");
		String userPWD = request.getParameter("userPWD");
		
		SignDao dao = new SignDao();
		boolean check;
		check = dao.Check(userID, userPWD);
		
		System.out.println("22"+userID);
		System.out.println("22"+userPWD);
		
		if(check == true) {
			System.out.println(userID);
			System.out.println(userPWD);
			System.out.println("Login succeed");
			String viewPage = null;
			viewPage = "Main.jsp";
		}else {
			System.out.println(userID);
			System.out.println(userPWD);
			System.out.println("Login fail");
			String viewPage = null;
			viewPage = "Login.jsp";
		}
	}

}
