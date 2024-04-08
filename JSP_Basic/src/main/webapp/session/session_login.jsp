<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session_login.jsp</title>
</head>
<body>
<%
	
	String id = (String)session.getAttribute("id"); //type casting 필요
	String name = (String)session.getAttribute("user_name"); //type casting 필요
if(id==null){
	%> 
	<h2>세션 로그인</h2>
	<form action="session_login_ok.jsp" method="post">
	ID : <input type="text" name="id"><br>
	PW : <input type="password" name="pw"><br>
	NICK : <input type="text" name="nick"><br>
	<input type="submit" name="login"><br>
	</form>
<%
}
else{
	response.sendRedirect("login_welcome.jsp");
}
%>

</body>
</html>