<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	/*
	1. 아이디 비밀번호 닉네임 받기
	2. 조건 : 아이디와 비밀번호가 서로 동일하면 user_id 이름으로 id 세션에 저장, user_name 이름으로 nick 세션에 저장,
		session_welcome 페이지를 작성, 이동한 후에 "id님(name) 환영합니다."
		아이디와 비밀번호가 일치하지 않은 경우 다시 로그인 페이지로 리다이렉트
	*/
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id"); // 아이디 받기
	String pw = request.getParameter("pw"); // 비밀번호 받기
	String nick = request.getParameter("nick"); // 비밀번호 받기
	
	if(id.equals(pw)){

		session.setAttribute("id", id);
		session.setAttribute("user_name",nick);
		response.sendRedirect("login_welcome.jsp");
	}
	else{

		response.sendRedirect("session_login.jsp");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session_login_ok.jsp</title>
</head>
<body>
	
</body>
</html>