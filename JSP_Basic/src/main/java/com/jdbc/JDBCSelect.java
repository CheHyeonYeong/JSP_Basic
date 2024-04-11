package com.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JDBCSelect {
	public static void main(String[] args) {
		String url = "jdbc:mysql://localhost:3306/jdbctest";
		String id = "jdbc";
		String pw = "jdbc";

		Connection conn  = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
        String sql = "select * from members";

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		     conn = DriverManager.getConnection(url, id, pw);
	         System.out.println(conn);
	         System.out.println("데이터베이스 접속 성공.");

	         pstmt = conn.prepareStatement(sql);

	         rs = pstmt.executeQuery();
	         while(rs.next()) {
	        	 String id1 = rs.getString("id");
	        	 String pw1 = rs.getString("pw");
	        	 String name = rs.getString("name");
	        	 String email = rs.getString("email");
	        	 System.out.printf("ID: %s, pw: %s, name: %s, email: %s\n", id1, pw1, name, email);
	             
	         }
	         
	        		

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			 try {
				 if(conn!=null) conn.close();
				 if(pstmt!=null) pstmt.close();
				 if(rs!=null) rs.close();
		            
	         } catch (Exception e) {
	            // TODO: handle exception
	         }
		}
	}


}
