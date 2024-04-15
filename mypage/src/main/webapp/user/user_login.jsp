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
</head>
<body>
	<%@include file="../include/header.jsp" %>
	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<form name = "regform" class="form-horizontal" action="user_login_ok.jsp" method="post">
						<h2 class="text-center">로그인 페이지</h2>
						<hr>
						
						<div class="form-group">
							<label class="col-sm-3 control-label">ID</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="id" placeholder="아이디">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label">PW</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" name="pw">
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-9">
								<input type="submit" class="btn btn-default" onclick="" value="로그인">
								<button type="button" class="btn btn-info" onclick="location.href='user_join.jsp'">회원가입</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	
			<br>

	<%@include file="../include/footer.jsp" %>
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
