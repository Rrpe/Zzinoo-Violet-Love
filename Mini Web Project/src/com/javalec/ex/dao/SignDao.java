package com.javalec.ex.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import javax.websocket.Session;

import com.javalec.ex.dto.BDto;
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
			String query = "insert into mvc_Sign (userID, userPWD, userNAME, userNICNAME, userEMAIL, userKEY ) values (?, ?, ?, ?, ?, 0)";
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
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
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

			while (rs.next()) {
				id = rs.getString(1);
				password = rs.getString(2);
				System.out.println("Employee id = " + id + "Phone password = " + password);
				return true;
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return false;

	}

	public SignDto PageEdit(String userID) {
	      
	      Connection connection = null;
	      PreparedStatement preparedStatement = null;

	      SignDto dto = null;
	      String id = userID;
	      ResultSet rs = null;
	      try {
	         connection = dataSource.getConnection();
	         String query = "SELECT * FROM mvc_Sign WHERE userID = ?";
	         preparedStatement = connection.prepareStatement(query);
	         preparedStatement.setString(1, userID);

	         rs = preparedStatement.executeQuery();

	         while (rs.next()) {
	            id= rs.getString("userID");
	            String userPWD = rs.getString("userPWD");
	            String userNAME = rs.getString("userNAME");
	            String userNICNAME = rs.getString("userNICNAME");
	            String userEMAIL = rs.getString("userEMAIL");
	            String userKey = rs.getString("userKey");
	            
	            dto = new SignDto(userID, userPWD, userNAME, userNICNAME, userEMAIL, userKey);
	         }

	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	      } finally {
	         try {
	            if (rs != null)
	               rs.close();
	            if (preparedStatement != null)
	               preparedStatement.close();
	            if (connection != null)
	               connection.close();
	         } catch (Exception e2) {
	            // TODO: handle exception
	            e2.printStackTrace();
	         }
	      }
	      return dto;
	   }
	
public ArrayList<SignDto> list() {
		
		ArrayList<SignDto> dtos = new ArrayList<SignDto>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {
			connection = dataSource.getConnection();
			
			String query = "select userID, userPWD, userNAME, userNICNAME, userEMAIL, userKEY from mvc_sign";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			
			while (resultSet.next()) {
				String userID = resultSet.getString("userID");
				String userPWD = resultSet.getString("userPWD");
				String userNAME = resultSet.getString("userNAME");
				String userNICNAME = resultSet.getString("userNICNAME");
				String userEMAIL = resultSet.getString("userEMAIL");
				String userKEY = resultSet.getString("userKEY");

				
				SignDto dto = new SignDto(userID, userPWD, userNAME, userNICNAME, userEMAIL, userKEY);
				dtos.add(dto);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				if(resultSet != null) resultSet.close();
				if(preparedStatement != null) preparedStatement.close();
				if(connection != null) connection.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return dtos;
	}

	public void modify(String userID, String userPWD, String userNAME, String userNICNAME, String userEMAIL, String userKEY) {
		// TODO Auto-generated method stub
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try {
			connection = dataSource.getConnection();
			
			String query = "update mvc_sign set userPWD = ?, userNAME = ?, userNICNAME = ?, userEMAIL = ?, userKEY = ? where userID = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, userPWD);
			preparedStatement.setString(2, userNAME);
			preparedStatement.setString(3, userNICNAME);
			preparedStatement.setString(4, userEMAIL);
			preparedStatement.setString(5, userKEY);
			preparedStatement.setString(6, userID);
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

}
