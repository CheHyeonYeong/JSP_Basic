<%@page import="com.myweb.user.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>el_request.jsp</title>
</head>
<body>
<%
	UserVO vo = new UserVO();

	vo.setId("jjj");
	vo.setName("dfs");
	vo.setAddress("dfs");
	
	request.setAttribute("vo", vo);
	RequestDispatcher dp = request.getRequestDispatcher("el_request_ok.jsp");
	dp.forward(request, response);
%>
</body>
</html>