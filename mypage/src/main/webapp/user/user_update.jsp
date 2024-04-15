<%@page import="com.myweb.user.model.UserVO"%>
<%@page import="com.myweb.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%
	String id = (String)session.getAttribute("user_id");
	
	if(id ==null){
		response.sendRedirect("user_login.jsp");
	}
	
	UserDAO dao = UserDAO.getInstance();
	UserVO vo = dao.getInfo(id);
	
	
%>
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
					<form name = "regform" class="form-horizontal" action="user_update_ok.jsp" method="post">
						<h2 class="text-center">회원 정보 수정 페이지</h2>
						<hr>
						<div class="form-group">
							<label class="col-sm-3 control-label">ID</label>
							<div class="col-sm-9">
								<input value = "<%=vo.getId() %>" type="text" class="form-control" name="id" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">이름</label>
							<div class="col-sm-9">
								<input value = "<%=vo.getName() %>" type="text" class="form-control" name="name">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Email</label>
							<div class="col-sm-9">
								<input type="email" class="form-control" name="email" value = "<%=vo.getEmail()%>">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Address</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="address" value="<%=vo.getAddress()%>">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-9">
								<button type="button" class="btn btn-primary" onclick="check()">회원 정보 수정</button>
								<button type="button" class="btn btn-info" onclick="location.href='user_mypage.jsp'">마이페이지</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../include/footer.jsp" %>
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
		function check(){
			//form은 유일하게 document.태그 이름으로 접근이 가능하다.
			if (document.regform.name.value == ''){
				alert("이름은 필수 사항입니다.");
				return;
			}else if (document.regform.email.value == ''){
				alert("email은 필수 사항입니다.");
				return;
			}
			else if(confirm("회원 정보 수정을 진행 하시겠습니까?")){
				//확인창을 띄워서 확인 취소 중 선택하는 메서드
				document.regform.submit();
			}
		}
	
	</script>
</body>
</html>
