package com.javalec.ex.command;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.dao.BDao;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BWriteCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("11111111111");
		String bName ="";
		String bTitle = "";
		String bContent = "";

		String uploadPath = request.getRealPath("/upload");
		String originalName1 = "";
		String fileName = ""; // 중복처리된 이름

		String namee = null;
		int maxSize = 1024 * 1024 * 10;
		

		try {
			MultipartRequest multi = new MultipartRequest(request,uploadPath,maxSize,"utf-8",new DefaultFileRenamePolicy());
			bName = multi.getParameter("bName");
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
		dao.write(bName, bTitle, bContent, namee);
	}
}
