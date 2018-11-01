package com.javalec.ex.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import javax.websocket.Session;

import com.javalec.ex.dto.SignDto;

public class SignDao {
	
	static DataSource dataSource;
	
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
			String query = "insert into mvc_Sign (userID, userPWD, userNAME, userNICNAME, userEMAIL ) values (?, ?, ?, ?, ?)";
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
	
	public boolean Check(String userID, String userPWD) {
		
		 Connection connection = null;
	      PreparedStatement preparedStatement = null;
	      
	      String id = userID;
	       String password = userPWD;
	       ResultSet rs = null;
	       System.out.println(id);
	       System.out.println(password);
	       try {
	         connection = dataSource.getConnection();
	         String query = "SELECT * FROM mvc_Sign WHERE userID =? and userPWD=?";
	         preparedStatement = connection.prepareStatement(query);
	         
	         preparedStatement.setString(1, id);
	         preparedStatement.setString(2, password);
	         
	         rs = preparedStatement.executeQuery();
	         
	         while(rs.next()) {
	        	 id = rs.getString(1);
	        	 password = rs.getString(2);
	        	 System.out.println("Employee id = " + id +
	        			   "Phone password = " + password);
	        	 return true;
	         }
	        
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	      } finally {
	         try {
	        	if(rs!=null) rs.close();
	            if(preparedStatement != null) preparedStatement.close();
	            if(connection != null) connection.close();
	         } catch (Exception e2) {
	            // TODO: handle exception
	            e2.printStackTrace();
	         }
	      }
	      return false;


	}
	
	private static SignDto getLoginFromResultSet(ResultSet rs)throws SQLException{
		SignDto model = null;
		if(rs.next())
		{
			model = new SignDto();
			model.setUserID(rs.getString("UserID"));
			model.setUserPWD(rs.getString("UserPWD"));
			model.setUserNICNAME(rs.getString("UserNICNAME"));
			model.setUserEMAIL(rs.getString("UserEMAIL"));
			
		}
		return model;
	}
	
	
}

