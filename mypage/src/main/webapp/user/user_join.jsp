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
					<form name = "regform" class="form-horizontal" action="user_join_ok.jsp" method="post">
						<h2 class="text-center">회원 가입 페이지</h2>
						<hr>
						<div class="form-group">
							<label class="col-sm-3 control-label">ID</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="id" placeholder="4글자 이상 8글자 이하">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">비밀번호</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" name="pw">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">비밀번호 확인</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" name="pw_check">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">이름</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="name">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Email</label>
							<div class="col-sm-9">
								<input type="email" class="form-control" name="email">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Address</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="address">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-9">
								<button type="button" class="btn btn-primary" onclick="check()">가입하기</button>
								<button type="button" class="btn btn-info" onclick="">로그인</button>
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
			if(document.regform.id.value==''){
				alert("아이디는 필수입니다.");
				return;
			}else if (document.regform.id.value.length < 4 || document.regform.id.value.length > 8){
				alert("아이디는 4글자 이상, 8글자 이하로 입력해주세요");
				return;
			}else if (document.regform.pw.value == ''){
				alert("비번은 필수 사항입니다.");
				return;
			}else if(document.regform.pw.value != document.regform.pw_check.value){
				alert("비밀번호 확인란을 확인해주세요");
				return;
			}else if (document.regform.name.value == ''){
				alert("이름은 필수 사항입니다.");
				return;
			}else if (document.regform.email.value == ''){
				alert("email은 필수 사항입니다.");
				return;
			}
			else if(cofirm("회원 가입을 하시겠습니까?")){
				//확인창을 띄워서 확인 취소 중 선택하는 메서드
				document.regform.submit();
			}
		}
	
	</script>
</body>
</html>
