<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
	<%
    session.removeAttribute("id"); //인증처리하는 세션을 삭제, 로그인 할 때 만들어지는 것을 삭제
    session.invalidate();
    
    response.sendRedirect("login.jsp");
    %>