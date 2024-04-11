<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 가입 연습</h2>
	<body>
	<form action="join_ok" method="post">
	ID : <input type="text" name="id"><br> 
	PW : <input type="password" name="pw"><br>
	이름 : <input type="text" name="name"><br>
	<select name="phone1">
		<option>010</option>
		<option>011</option>
		<option>018</option>
	</select>
	-<input type="text" name = phone2><br>
	
	<input type="radio" name="gender" value="m"/>남자
	<input type="radio" name="gender" value="w"/>여자 <br>
	
	<input type = "submit" value= "가입">
	</form>

</body>
</html>