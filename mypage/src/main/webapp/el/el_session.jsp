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
			application.setAttribute("admin", "홍길동");
		
		%>	
		<a href="el_session_ok.jsp">세션 값 확인</a>
	</body>
</html>