package com.jdbc.domain;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;

public class UserDAO {
	
	//싱글톤 패턴 : 하나의 객체만 생성하여 사용하도록 만드는 패턴
	private static UserDAO instance  = new UserDAO();
	//Connection 객체를 생성하기 위한 값
    private String url ="jdbc:mysql://localhost:3306/testdb";
    private String user = "jdbc";
    private String password = "jdbc";

    //데이터 접속을 위한 객체 데이터베이스 연결 객체(Connection 객체)
    Connection conn = null; //비어있는 객체선언.
//    Statement stmt = null;
    ResultSet rs = null;
	private UserDAO() {
		//생성자가 한 번 동작할 때 드라이버와 연결
		 try {
	            Class.forName("com.mysql.cj.jdbc.Driver");

	            // 2. Connection 객체 생성 - DriverManger.getConnection 이용
	            conn = DriverManager.getConnection(url, user, password);
	            System.out.println(conn);
	            System.out.println("데이터베이스 접속 성공.");
	            
	           
	            
	        } catch (ClassNotFoundException e) {
	            System.out.println("드라이버 로드 실패");
	        }
	        catch(SQLException sqle) {
	            System.out.println("SQL 연동 오류");
	            System.out.println(sqle.getMessage());

	        }
	}
	public static UserDAO getInstance() {
		return instance;
	}
	public static void setInstance(UserDAO instance) {
		UserDAO.instance = instance;
	}
	
	
}
