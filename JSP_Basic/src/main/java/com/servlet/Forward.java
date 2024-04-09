package com.servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Forward")
public class Forward extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Forward() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		System.out.println(id);
		//request에 1회성으로 사용하기 위해 값을 강제로 저장 
		request.setAttribute("name","hyeonyeong");
		//-> 하지만 sendRedirect 하게 되면 새 객체로 저장되기 때문에 아무것도 전달되지 않는다.
//		response.sendRedirect("actionTag/forward_ex04.jsp");
		
		RequestDispatcher dp = request.getRequestDispatcher("actionTag/forward_ex04.jsp");
		dp.forward(request, response);
	}
}
