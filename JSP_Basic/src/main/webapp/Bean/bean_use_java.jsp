<%@page import="com.bean.User"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		User user = (User)request.getAttribute("user");
	%>
	<%=user.getId() %>
	<%=user.getPw() %>
</body>
</html>