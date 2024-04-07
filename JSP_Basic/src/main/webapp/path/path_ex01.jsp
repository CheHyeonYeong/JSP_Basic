<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	상대경로 : 현재 위치 (동작하는 파일의 위치에서 다른파일의 경로 참조
	절대경로 : 프로젝트의 전체 경로(포트번호를 제외한 /ContextPath 로부터의 경로)
	 -->

	<h2>path_ex01</h2>
	<a href = "path_ex02.jsp">02 페이지로 이동(상대경로)</a>
	<a href = "/jspbasic/path/path_ex02.jsp">02 페이지로 이동(절대경로)</a>
</body>
</html>