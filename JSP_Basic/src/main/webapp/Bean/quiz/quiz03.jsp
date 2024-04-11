<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="user" class="com.bean.User" scope="request" />
	<jsp:getProperty property="id" name="user"/> 님의 회원 가입을 축하합니다. 비밀번호는 
	<jsp:getProperty property="pw" name="user"/>입니다.
</body>
</html>