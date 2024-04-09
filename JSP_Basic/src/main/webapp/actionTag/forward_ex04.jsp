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
	
전달 받은 id : <%=id %><br>
강제저장한 name : <%=name %><br>
</body>
</html>