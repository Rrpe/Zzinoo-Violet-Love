package com.javalec.ex.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.dao.BDao;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BModifyCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String bId ="";
		String userID ="";
		String bTitle = "";
		String bContent = "";
		
		String uploadPath = request.getSession().getServletContext().getRealPath("/image/");
		//String uploadPath = request.getRealPath("/image/");
		
		String originalName1 = "";
		String fileName = ""; // 중복처리된 이름

		String namee = null;
		int maxSize = 1024 * 1024 * 10;
		
		try {
			MultipartRequest multi = new MultipartRequest(request,uploadPath,maxSize,"EUC-KR",new DefaultFileRenamePolicy());
			bId = multi.getParameter("bId");
			userID = multi.getParameter("userID");
			bTitle = multi.getParameter("bTitle");
			bContent = multi.getParameter("bContent");
			
			originalName1=multi.getOriginalFileName("fileName");
			namee=multi.getFilesystemName("fileName");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		System.out.println(originalName1);
		System.out.println(fileName);
		BDao dao = new BDao();
		dao.modify(bId, userID, bTitle, bContent, namee);
			
	}

}
