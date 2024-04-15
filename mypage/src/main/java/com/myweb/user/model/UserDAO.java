package com.myweb.user.model;

import java.sql.Timestamp;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.myweb.util.JdbcUtil;

import java.sql.PreparedStatement;

public class UserDAO {
	
	private static UserDAO instance  = new UserDAO();
	
	private DataSource ds;
	private PreparedStatement pstmt = null;
	Connection conn = null; //비어있는 객체선언.
    ResultSet rs = null;
    
	private UserDAO() {		//생성자가 한 번 동작할 때 드라이버와 연결
		try {
            InitialContext ctx = new InitialContext(); //초기 설정 파일 저장되는 객체
            ds = (DataSource)ctx.lookup("java:comp/env/jdbc/mysql2");
            System.out.println(conn);
        } catch (NamingException e) {
            System.out.println("connection pooling error");
        }
	}
	public static UserDAO getInstance() {
		return instance;
	}
	public static void setInstance(UserDAO instance) {
		UserDAO.instance = instance;
	}
	
	public int IdConfirm(String id) {
		int result = 0;
		String sql = "select * from users where id = ?";
		
		try {
			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {result = 1;}
			
		} catch (Exception e) {
			e.getMessage();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
			
		}
		
		
		return result;
		
	}
	
	//회원 가입
	public int join(UserVO vo) {
		int result = 0;
		
		String sql = "insert into users(id,pw,name,email,address) values(?,?,?,?,?)";
		
		try {
		     conn = ds.getConnection();
	         System.out.println("데이터베이스 접속 성공.");
	         pstmt = conn.prepareStatement(sql);
	         
	         pstmt.setString(1,vo.getId());
	         pstmt.setString(2,vo.getPw());
	         pstmt.setString(3,vo.getName());
	         pstmt.setString(4,vo.getEmail());
	         pstmt.setString(5,vo.getAddress());
	            
	         result = pstmt.executeUpdate();
	         
		}  catch (SQLException sqle) {
	         System.out.println("SQL 연동 오류");
	         System.out.println(sqle.getMessage());
	      }finally {
	        	 JdbcUtil.close(conn, pstmt, rs);
	      }
		
		return result;
		
	}
	
	public int login(String id, String pw) {
		int result = 0;
		String sql = "select * from users where id=? and pw=?";

		try {
			conn = ds.getConnection();
	         System.out.println(conn);
	         System.out.println("데이터베이스 접속 성공.");

	         pstmt = conn.prepareStatement(sql);
	         
	         pstmt.setString(1, id); 
	         pstmt.setString(2, pw); 
	         rs = pstmt.executeQuery(); // 쿼리 실행 결과를 ResultSet에 저장

	         if (rs.next()) {
	             result = 1; // 존재하는 경우 1, 존재하지 않는 경우 0
	         }
	         
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return result;
	}
	//회원 정보 수집
	public UserVO getInfo(String id) {
		UserVO vo = null;
		String sql = "select * from users where id = ?";

		try {
			int result = 0;
			conn = ds.getConnection();
	         System.out.println(conn);
	         System.out.println("데이터베이스 접속 성공.");

	         pstmt = conn.prepareStatement(sql);
	         
	         pstmt.setString(1, id); // id 값이 문자열이므로 setString을 사용하여 데이터 타입을 지정

	         rs = pstmt.executeQuery(); // 쿼리 실행 결과를 ResultSet에 저장

	         if (rs.next()) {
	             result = 1; // 존재하는 경우 1, 존재하지 않는 경우 0

	             String name = rs.getString("name");
	             String pw = rs.getString("pw");
	             String email = rs.getString("email");
	             String address = rs.getString("address");
	             Timestamp regdate = rs.getTimestamp("regdate");
	             vo = new UserVO(id, pw, name, email, address, regdate);
	         }  
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return vo;
	}
	
	
	public int update(UserVO vo) {
		int result = 0;
		
		String sql = "update users set name=?, email=?, address=? where id=?";
		try {
			conn = ds.getConnection();
	         
	         pstmt = conn.prepareStatement(sql);
	         
	         pstmt.setString(1,vo.getName());
	         pstmt.setString(2,vo.getEmail());
	         pstmt.setString(3,vo.getAddress());
	         
	         pstmt.setString(4,vo.getId());
	            
	         result = pstmt.executeUpdate();

		}  catch (SQLException sqle) {
	         System.out.println("SQL 연동 오류");
	         System.out.println(sqle.getMessage());
	      }finally {
	         try {
				 if(conn!=null) conn.close();
				 if(pstmt!=null) pstmt.close();
				 if(rs!=null) rs.close();
	         } catch (Exception e) {
	            // TODO: handle exception
	         }
	      }
		
		return result;
		
	}
	
	public int delete(String id) {
		int result =0;

		String sql = "delete from users where id=?";
		try {
			conn = ds.getConnection();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1,id);
	         result = pstmt.executeUpdate();

		}catch (SQLException sqle) {
	         System.out.println("SQL 연동 오류");
	         System.out.println(sqle.getMessage());
	      }finally {
	    	  JdbcUtil.close(conn, pstmt, rs);
	      }
		
		return result;
		
	}

	public int changePW(String id,String pw ) {

		int result =0;
		String sql = "update users set pw=? where id=?";
		try {
			conn = ds.getConnection();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1,pw);
	         pstmt.setString(2,id);
	         result = pstmt.executeUpdate();

		}catch (SQLException sqle) {
	         System.out.println("SQL 연동 오류");
	         System.out.println(sqle.getMessage());
	      }finally {
	    	  JdbcUtil.close(conn, pstmt, rs);
	      }
		return result;
	}
}
