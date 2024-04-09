<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
    <%
    String name = request.getParameter("name");
    String nick = request.getParameter("nick");
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

name : <%=name %><br>
nick : <%=nick %><br>
</body>
</html>