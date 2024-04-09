<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2> 이름과 점수를 입력하세요</h2>

<form action="score_quiz02.jsp" method="post">
	name : <input type="text" name="name"><br>
	Korean : <input type="text" name="ko"><br>
	English : <input type="text" name="en"><br>
	Math : <input type="text" name="math"><br>
	<input type="submit" value="처리">

</form>
</body>
</html>