<%@page import="com.myweb.user.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>el_session.jsp</title>
</head>
	<body>
		<%
			session.setAttribute("id", "kkkk");
			UserVO vo = new UserVO();
			vo.setEmail("kkk@123.com");
			session.setAttribute("vo",vo);
			application.setAttribute("admin", "ȫ�浿");
		
		%>	
		<a href="el_session_ok.jsp">���� �� Ȯ��</a>
	</body>
</html>