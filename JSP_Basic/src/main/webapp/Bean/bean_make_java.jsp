<%@page import="com.bean.User"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>bean_make_java.jsp</title>
</head>
<body>
	<h2>�ڹ��ڵ带 �̿��� bean ���</h2>
	<%
		User user = new User();
		user.setId("k");
		user.setPw("k");
		user.setEmail("email");
		user.setName("name");
		
		request.setAttribute("user", user);
		RequestDispatcher dp = request.getRequestDispatcher("bean_use_java.jsp");
		dp.forward(request, response);
		
	%>
</body>
</html>