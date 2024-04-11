package com.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class JDBCinsert {

	public static void main(String[] args) {
		Scanner s  = new Scanner(System.in);
		System.out.println("id>> ");
		String id = s.next();
		System.out.println("pw>> ");
		String pw = s.next();
		System.out.println("name>> ");
		String name = s.next();
		System.out.println("email>> ");
		String email = s.next();

		Connection conn  = null;
		PreparedStatement pstmt = null;
		String sql = "insert into members values(?,?,?,?)";
		
		try {
		     Class.forName("com.mysql.cj.jdbc.Driver");
		     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbctest", "jdbc","jdbc");
	         System.out.println(conn);
	         System.out.println("데이터베이스 접속 성공.");
	         pstmt = conn.prepareStatement(sql);
	         
	         pstmt.setString(1,id);
	         pstmt.setString(2,pw);
	         pstmt.setString(3,name);
	         pstmt.setString(4,email);
	            
	         int result = pstmt.executeUpdate();
	         if(result != 0) {
	         	System.out.println("SQL성공");
	         }else {
	        	 System.out.println("SQL실패");
	        	 }
		}  catch (ClassNotFoundException e) {
	         System.out.println("드라이버 로드 실패");
	      }catch (SQLException sqle) {
	         System.out.println("SQL 연동 오류");
	         System.out.println(sqle.getMessage());
	      }finally {
	         try {
	            
	         } catch (Exception e) {
	            // TODO: handle exception
	         }
	      }
		}
	}

