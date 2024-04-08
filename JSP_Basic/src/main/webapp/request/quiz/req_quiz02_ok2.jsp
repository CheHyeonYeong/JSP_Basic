<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    request.setCharacterEncoding("utf-8");
      String num = request.getParameter("num");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request quiz02 Okay</title>
</head>
<body>


<%=num%>번 학생 출석

</body>
</html>