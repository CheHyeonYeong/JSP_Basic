<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>path_quiz</title>
</head>
<body>
	<!--a태그를 이용하여 경로이동  -->
	<!--1.jspbasic 폴더에 03.expression.jsp파일로 접근 상대/절대 경로로 접근  -->
	<a href="../../quiz/03.expression.jsp">03.expression 상대경로 </a><br>
	<br>
	<a href="/jspbasic/jspbasic/03.expression.jsp">03.expression 절대경로</a><br>
	<br>
	<!--2. TestServlet 서블릿 페이지로 상대/절대 경로로 접근  -->
	<a href="../../TestServlet">서블렛 상대경로</a><br>
	<br>
	<a href="/jspbasic/TestServlet">서블렛 절대경로</a><br>
	<!--3. images 폴더에 있는 이미지 파일에 상대 경로로 접근   -->
	
</body>
</html>