<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	표현식<br>
	<%=1+2 %><br>
	<%="안녕" %><br>
	<%=1>2 ||1==2 %><br>
	---------------------------<br>
	
	<b> el 표기법</b><br>
	
	${1+2}<br>
	${"안녕"}<br>
	${1>2||1==2}<br>
	
</body>
</html>