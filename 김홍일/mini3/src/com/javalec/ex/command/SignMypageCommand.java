package com.javalec.ex.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.dao.SignDao;

public class SignMypageCommand implements SignCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String userID = request.getParameter("userID");
		
		SignDao dao = new SignDao();
		dao.PageEdit(userID);
	}
}
