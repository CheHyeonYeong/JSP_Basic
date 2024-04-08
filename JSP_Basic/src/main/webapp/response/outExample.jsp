<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>outExample.jsp</title>
</head>
<body>

	<h2>out 객체</h2>
	<p>
	out 객체는 jsp에서 html로 보내기위한 출력 객체를 말함 표현식이 이를 대체하고 있음.
	</p>
	
	<%
	for(int i =1;i<=10;i++){
		out.println("<input type='checkbox' name ='check'>"+i);
		
	}
	%>
	<br>
	<%
	for(int i = 1;i<=10;i++){%>
		<input type="checkbox" name = 'check'><%=i %>
		
		<%}%>
	
</body>
</html>