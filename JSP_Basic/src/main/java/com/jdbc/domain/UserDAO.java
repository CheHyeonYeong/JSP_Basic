package com.jdbc.domain;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class UserDAO {
	
	//-----------------중복되는 코드를 멤버변수로 선언
	

	
	private PreparedStatement pstmt = null;
	
	//싱글톤 패턴 : 하나의 객체만 생성하여 사용하도록 만드는 패턴
	private static UserDAO instance  = new UserDAO();
	//Connection 객체를 생성하기 위한 값
    private String url ="jdbc:mysql://localhost:3306/jdbctest";
    private String user = "jdbc";
    private String password = "jdbc";

    //데이터 접속을 위한 객체 데이터베이스 연결 객체(Connection 객체)
    Connection conn = null; //비어있는 객체선언.
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
	

	
	
	//-----------------기능을 메소드로 선언
	
	//회원 가입
	public int join(UserVO vo) {
		int result = 0;
		
		String sql = "insert into user values(?,?,?,?,?,?)";
		
		try {
		     Class.forName("com.mysql.cj.jdbc.Driver");
		     conn = DriverManager.getConnection(url, user,password);
	         System.out.println(conn);
	         System.out.println("데이터베이스 접속 성공.");
	         pstmt = conn.prepareStatement(sql);
	         
	         pstmt.setString(1,vo.getId());
	         pstmt.setString(2,vo.getPw());
	         pstmt.setString(3,vo.getName());
	         pstmt.setString(4,vo.getPhone1());
	         pstmt.setString(5,vo.getPhone2());
	         pstmt.setString(6,vo.getGender());
	            
	         result = pstmt.executeUpdate();
	         
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
		
		return result;
		
	}
	
	public int login(String id, String pw) {
		int result = 0;
		 String sql = "select * from user where id=? and pw=?";

			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			     conn = DriverManager.getConnection(url, user, password);
		         System.out.println(conn);
		         System.out.println("데이터베이스 접속 성공.");

		         pstmt = conn.prepareStatement(sql);
		         
		         pstmt.setString(1, id); // id 값이 문자열이므로 setString을 사용하여 데이터 타입을 지정
		         pstmt.setString(2, pw); // pw 값이 문자열이므로 setString을 사용하여 데이터 타입을 지정

		         
		         rs = pstmt.executeQuery(); // 쿼리 실행 결과를 ResultSet에 저장

		         if (rs.next()) {
		             result = 1; // 존재하는 경우 1, 존재하지 않는 경우 0
		         }
		         
		         if(result != 0) {
		         	System.out.println("SQL성공");
		         }else {
		        	 System.out.println("SQL실패");
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
		
		return result;
		
	}
	//회원 정보 수집
	public UserVO getInfo(String id) {
		UserVO vo = null;
		String sql = "select * from user where id = ?";

		try {
			int result = 0;
			Class.forName("com.mysql.cj.jdbc.Driver");
		     conn = DriverManager.getConnection(url, user, password);
	         System.out.println(conn);
	         System.out.println("데이터베이스 접속 성공.");

	         pstmt = conn.prepareStatement(sql);
	         
	         pstmt.setString(1, id); // id 값이 문자열이므로 setString을 사용하여 데이터 타입을 지정

	         rs = pstmt.executeQuery(); // 쿼리 실행 결과를 ResultSet에 저장

	         if (rs.next()) {
	             result = 1; // 존재하는 경우 1, 존재하지 않는 경우 0
	             
	             String name = rs.getString("name");
	             String pw = rs.getString("pw");
	             String phone1 = rs.getString("phone1");
	             String phone2 = rs.getString("phone2");
	             String gender = rs.getString("gender");
	             
	             vo = new UserVO(id, pw, name,phone1, phone2, gender);
	             
	         }
	         
	         if(result != 0) {
	         	System.out.println("SQL성공");
	         }else {
	        	 System.out.println("SQL실패");
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
		
		return vo;
	}
	public int update(UserVO vo) {
		int result = 0;
		
		String sql = "update user set name=?, phone1=?, phone2=?, gender=? where id=?";
		
		try {
		     Class.forName("com.mysql.cj.jdbc.Driver");
		     conn = DriverManager.getConnection(url, user,password);
	         System.out.println(conn);
	         System.out.println("데이터베이스 접속 성공.");
	         pstmt = conn.prepareStatement(sql);
	         
	         pstmt.setString(1,vo.getName());
	         pstmt.setString(2,vo.getPhone1());
	         pstmt.setString(3,vo.getPhone2());
	         pstmt.setString(4,vo.getGender());
	         pstmt.setString(5,vo.getId());
	            
	         result = pstmt.executeUpdate();
	         
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
		
		return result;
		
	}

	
}
