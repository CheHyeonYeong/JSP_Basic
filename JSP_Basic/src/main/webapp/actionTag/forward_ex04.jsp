<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    	String id = request.getParameter("id");
    	String name = (String)request.getAttribute("name");
    	
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
���� ���� id : <%=id %><br>
���������� name : <%=name %><br>
</body>
</html>