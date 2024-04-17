<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
    	String test = "test";
    
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2> remove test</h2>
		<c:set var="test1" value="<%=test %>" />
		<c:set var="test2" value="test2" />
		<c:remove var="test2" scope="page"/>
		
		${pageScope.test1 }<br>
		${test2 }
		
		<h2>c:forTokens 테스트</h2>
		<c:set var="tokens" value="안녕/하세요/조금있으면/점심/입니다." />
		<c:forTokens var="abc" items="${tokens}" delims="/">${abc }<br></c:forTokens>
		
	</body>
</html>