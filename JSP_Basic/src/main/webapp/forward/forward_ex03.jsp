<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    	String id = request.getParameter("id");
		String pw = request.getParameter("pw");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

���� ���� id : <%=id %><br>
���� ���� pw : <%=pw %><br>
</body>
</html>