package com.javalec.ex.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.javalec.ex.dao.SignDao;
import com.javalec.ex.dto.SignDto;

public class SignListCommand implements SignCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		SignDao dao = new SignDao();
		ArrayList<SignDto> dtos = dao.list();
		request.setAttribute("list", dtos);
	}

}
