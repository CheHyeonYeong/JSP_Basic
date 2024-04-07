<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--<h1> header </h1> --%>			<%--header 직접 작성 --%>
	<%@ include file="header.jsp" %>	<%--header 불러오기 --%>
	<hr>
	<section>
		실제 내용들이 출력될 본문
		<br>
		<br>
	</section>
	<hr>
	<%--<h2>footer</h2>--%>				<%--footer 직접 작성 --%>
	<%@ include file="footer.jsp" %> 	<%--footer 불러오기 --%>
</body>
</html>