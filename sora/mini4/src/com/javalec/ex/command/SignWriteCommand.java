package com.javalec.ex.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.dao.SignDao;

public class SignWriteCommand implements SignCommand{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		String userID = request.getParameter("userID");
		String userPWD = request.getParameter("userPWD");
		String userNAME = request.getParameter("userNAME");
		String userNICNAME = request.getParameter("userNICNAME");
		String userEMAIL = request.getParameter("userEMAIL");
		
		SignDao dao = new SignDao();
		dao.write(userID, userPWD, userNAME, userNICNAME, userEMAIL);
	}
}
