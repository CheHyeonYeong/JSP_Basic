<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<%
	//세션은 쿠키와 같이 인증정보를 유지하기 위해 사용하는 jsp 내장 객체이다.
	//setAttribute("이름", 값)으로 저장
	session.setAttribute("id", "kkk123");
	session.setAttribute("name","홍길동");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session Set</title>
</head>
<body>
	<a href="session_get.jsp">세션 확인하기</a>
</body>
</html>