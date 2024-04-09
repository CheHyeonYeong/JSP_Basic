<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h2>여기는 1번 페이지 입니다.</h2>
	<hr>
	
	<%@ include file="include_ex02.jsp" %>
	
	<hr>
	<jsp:include page="include_ex02.jsp"/>
</body>
</html>