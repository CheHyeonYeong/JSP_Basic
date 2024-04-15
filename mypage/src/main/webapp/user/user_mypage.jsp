<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Welcome to MyWorld</title>

	<!-- Bootstrap Core CSS -->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom CSS -->
	<link href="../css/business-casual.css" rel="stylesheet">

	<!-- Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
	
	
	<%
		
		String id = (String)session.getAttribute("user_id");
		String name = (String)session.getAttribute("user_name");
		
		if(id ==null){
			response.sendRedirect("user_login.jsp");
		}
	%>
</head>
<body>
	<%@include file="../include/header.jsp" %>
	<section>
	<div align="center">
		<h2>MyPage</h2>
		<hr>
		
		<%=id %>(<%=name %>)님의 회원정보를 관리합니다.
		<hr>
		<button type="button" class="btn btn-primary" 
		onclick="location.href='user_change_pw.jsp'">비밀번호 변경</button>
		<button type="button" class="btn btn-info" 
		onclick="location.href='user_update.jsp'">회원 정보 수정</button>
		<button type="button" class="btn btn-primary" onclick="location.href='user_delete_check.jsp'">회원 탈퇴</button>
	
	</div>
									
		
	</section>
	<%@include file="../include/footer.jsp" %>
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
