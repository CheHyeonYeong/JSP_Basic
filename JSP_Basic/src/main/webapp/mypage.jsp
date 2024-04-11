<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String id = (String)session.getAttribute("id"); //type casting 필요
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1><%=id %>님 환영합니다.</h1>
</body>
</html>