<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String id = (String)session.getAttribute("id"); //type casting �ʿ�
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1><%=id %>�� ȯ���մϴ�.</h1>
</body>
</html>