package com.myweb.board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.myweb.util.Criteria;
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
	
	//게시글 등록 메서드
	public void regist(String write, String title, String content) {
		String sql = "insert into board(writer, title, content) values(?,?,?)";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, write);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.getMessage();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
			
		}
	}
	
	public ArrayList<BoardVO> getList(Criteria cri) {	
		ArrayList<BoardVO> list = new ArrayList<>();
	        
	        String sql = "SELECT * FROM board ORDER BY num DESC LIMIT ?, ?";
	        try {
	            conn = ds.getConnection();
	            pstmt = conn.prepareStatement(sql);
	            pstmt.setInt(1, cri.getPageStart());
	            pstmt.setInt(2, cri.getCount());
	            rs = pstmt.executeQuery();
	            
	            while (rs.next()) {
	                int num = rs.getInt("num");
	                String writer = rs.getString("writer");
	                String title = rs.getString("title");
	                String content = rs.getString("content");
	                Timestamp regdate = rs.getTimestamp("regdate");
	                int hit = rs.getInt("hit");
	                
	                BoardVO vo = new BoardVO(num, writer, title, content, regdate, hit);
	                list.add(vo);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            JdbcUtil.close(conn, pstmt, rs);
	        }
	        return list;
	}
	
	public int getTotal() {
		int count=0;
		String sql = "select count(*) total from board";
		try {
			conn = ds.getConnection(); 
	        pstmt = conn.prepareStatement(sql);
	        rs = pstmt.executeQuery();
	        if(rs.next()) {
	        	 count = rs.getInt("total");
	        }

		}  catch (SQLException sqle) {
	         System.out.println("SQL 연동 오류");
	         System.out.println(sqle.getMessage());
	      }finally {
	    	  JdbcUtil.close(conn, pstmt, rs);
	      }
		return count;
	}
	
	
	public BoardVO getContent(int num) {
		BoardVO vo=null;
		String sql = "select * from board where num=?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				int id = rs.getInt("num");
				String writer = rs.getString("writer");
				String title = rs.getString("title");
				String content = rs.getString("content");
				Timestamp regdate  = rs.getTimestamp("regdate");
				int hit = rs.getInt("hit");
				
				vo = new BoardVO(id,writer, title, content, regdate, hit);
			}
			else {
				System.out.println("vo를 제대로 찾지 못했습니다.");
				vo = null;
			}

				
		} catch (Exception e) {
			e.getMessage();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		return vo;
	}
	
	
	public void update(BoardVO vo) {
		String sql = "update board set title=?, content=? where num=?";
		try {
			conn = ds.getConnection();
	         
	         pstmt = conn.prepareStatement(sql);
	         
	         pstmt.setString(1,vo.getTitle());
	         pstmt.setString(2,vo.getContent());
	         pstmt.setInt(3,vo.getNum());

	         pstmt.executeUpdate();

		}  catch (SQLException sqle) {
	         System.out.println("SQL 연동 오류");
	         System.out.println(sqle.getMessage());
	      }finally {
	    	  JdbcUtil.close(conn, pstmt, rs);
	      }
		
	}
	public void delete(int num) {
		String sql = "delete from board where num=?";
		try {
			conn = ds.getConnection();
	         
	         pstmt = conn.prepareStatement(sql);
	         
	         pstmt.setInt(1,num);
	         
	         pstmt.executeUpdate();

		}  catch (SQLException sqle) {
	         System.out.println("SQL 연동 오류");
	         System.out.println(sqle.getMessage());
	      }finally {
	    	  JdbcUtil.close(conn, pstmt, rs);
	      }
	}

	
}
