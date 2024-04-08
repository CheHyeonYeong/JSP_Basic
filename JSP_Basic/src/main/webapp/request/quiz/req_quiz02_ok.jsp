<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Request quiz02 Okay</title>
</head>
<body>

<p>다음을 구현하고 a 태그 클릭시 req_quiz02_ok에 학생번호를 출력하시오</p>


<% for (int i =1;i<=30;i++){%>
	<a href="req_quiz02_ok2.jsp?num=<%=i%>"><%=i%>번 학생</a><br>
	<%}
%>



</body>
</html>