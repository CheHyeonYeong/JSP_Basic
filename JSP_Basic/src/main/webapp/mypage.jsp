<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String id = (String)session.getAttribute("id"); //type casting 필요
    if(id==null){
    	
    	response.sendRedirect("login.jsp");
    }
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1><%=id %>님 환영합니다.</h1>

<a href="logout.jsp">로그아웃</a><br>
<a href="modify_ok.jsp">정보수정</a><br>
<a href="delete_ok.jsp">회원탈퇴</a>
</body>
</html>