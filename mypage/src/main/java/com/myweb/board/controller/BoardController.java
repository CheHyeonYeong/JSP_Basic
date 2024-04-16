package com.myweb.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myweb.board.service.ContentServiceImpl;
import com.myweb.board.service.DeleteServiceImpl;
import com.myweb.board.service.GetListServiceImpl;
import com.myweb.board.service.IBoardService;
import com.myweb.board.service.RegisterServiceImpl;
import com.myweb.board.service.UpdateServiceImpl;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("*.board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String url = request.getRequestURI();
		String path = request.getContextPath();
		String command = url.substring(path.length());
		
		IBoardService service = null;
		
		System.out.println(command);
		if(command.equals("/board/list.board")) {
			//글 목록
			//게시글 목록을 가지고 화면으로 이동
			service = new GetListServiceImpl();
			service.execute(request, response);
			
			//전달해야 할 값은 service 영역에서 전달할 내용을 강제 저장
			RequestDispatcher dp = request.getRequestDispatcher("board_list.jsp");
			dp.forward(request, response);
		}else if(command.equals("/board/write.board")) {//글 작성 페이지
			response.sendRedirect("board_write.jsp");
			
		}else if(command.equals("/board/register.board")) {
			//서비스 객체 생성
			service = new RegisterServiceImpl();
			service.execute(request, response);
			
			response.sendRedirect("list.board");
		}else if(command.equals("/board/content.board")) {
			service = new ContentServiceImpl();
			service.execute(request, response);
			
			//전달해야 할 값은 service 영역에서 전달할 내용을 강제 저장
			RequestDispatcher dp = request.getRequestDispatcher("board_content.jsp");
			dp.forward(request, response);
		}else if(command.equals("/board/modify.board")) {
			service = new ContentServiceImpl();
			service.execute(request, response);
			
			//전달해야 할 값은 service 영역에서 전달할 내용을 강제 저장
			RequestDispatcher dp = request.getRequestDispatcher("board_modify.jsp");
			dp.forward(request, response); 
		}else if(command.equals("/board/update.board")) {
			service = new UpdateServiceImpl();
			service.execute(request, response);
			
			String num= request.getParameter("num");
			response.sendRedirect("content.board?num="+num);
		}else if(command.equals("/board/delete.board")) {
			service = new DeleteServiceImpl();
			service.execute(request, response);
			
			response.sendRedirect("list.board");
		}
	}
}
