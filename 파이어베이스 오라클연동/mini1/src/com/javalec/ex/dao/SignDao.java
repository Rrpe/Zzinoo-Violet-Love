package com.javalec.ex.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class SignDao {
	
	DataSource dataSource;
	
	public SignDao() {
		// TODO Auto-generated constructor stub
		
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public void write(String userID, String userPWD, String userNAME, String userNICNAME, String userEMAIL) {
		// TODO Auto-generated method stub
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = dataSource.getConnection();
			String query = "insert into mvc_Sign (userID, userPWD, userNAME, userNICNAME, userEMAIL) values (?, ?, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, userID);
			preparedStatement.setString(2, userPWD);
			preparedStatement.setString(3, userNAME);
			preparedStatement.setString(4, userNICNAME);
			preparedStatement.setString(5, userEMAIL);
			int rn = preparedStatement.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		
	}
	
	public void Check(String userID, String userPWD) {
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		String id = userID;
	    String password = userPWD;
	    ResultSet rs = null;

	}
}

