<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
    <%
    
    String id = (String)session.getAttribute("id"); //type casting 필요
    String name = (String)session.getAttribute("user_name"); //type casting 필요
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
if(id!=null){
	%> <h2><%=id %> (<%=name %>)님 반가워요!!</h2><%
}
else{
	response.sendRedirect("session_login.jsp");
}
%>
<a href="logout.jsp">로그아웃</a>
</body>
</html>