package com.myweb.board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.myweb.util.JdbcUtil;

public class BoardDAO {

	
	private static BoardDAO instance  = new BoardDAO();
	
	private DataSource ds;
	private PreparedStatement pstmt = null;
	Connection conn = null; //비어있는 객체선언.
    ResultSet rs = null;
    
	private BoardDAO() {		//생성자가 한 번 동작할 때 드라이버와 연결
		try {
            InitialContext ctx = new InitialContext(); //초기 설정 파일 저장되는 객체
            ds = (DataSource)ctx.lookup("java:comp/env/jdbc/mysql2");
            System.out.println(conn);
        } catch (NamingException e) {
            System.out.println("connection pooling error");
        }
	}
	public static BoardDAO getInstance() {
		return instance;
	}
	public static void setInstance(BoardDAO instance) {
		BoardDAO.instance = instance;
	}
	
	
	
}
