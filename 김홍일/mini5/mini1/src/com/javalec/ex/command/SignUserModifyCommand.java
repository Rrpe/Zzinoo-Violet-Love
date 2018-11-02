package com.javalec.ex.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.dao.SignDao;

public class SignUserModifyCommand implements SignCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("222222222222222222222222222");
		String userID = request.getParameter("userID");
		String userPWD = request.getParameter("userPWD");
		String userNAME = request.getParameter("userNAME");
		String userNICNAME = request.getParameter("userNICNAME");
		String userEMAIL = request.getParameter("userEMAIL");
		String userKEY = request.getParameter("userKEY");
		System.out.println(userID + "" + userPWD + "" + userNAME + "" + userNICNAME + "" + userEMAIL + "" + userKEY);
		SignDao dao = new SignDao();
		dao.modify(userID, userPWD, userNAME, userNICNAME, userEMAIL, userKEY);
	}

}
