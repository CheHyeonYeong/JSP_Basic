<%@page import="com.myweb.board.model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%
	
	BoardVO vo = (BoardVO)request.getAttribute("vo");
	
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
			<div align="center">
				<form action="update.board" method="post" name ="regform">
					<h2>게시판 글 수정 페이지</h2>
					<hr>
					<table border ="1" style="width:500">
						<tr>
							<td>글번호</td>
							<td><input type="text" name="num" value="<%=vo.getNum() %>" readonly="readonly"></td>
						</tr>
						<tr>
							<td>작성자</td>
							<td><input type="text" name="writer" size="10" value="<%=vo.getWriter()%>" readonly="readonly"></td>
						</tr>
						<tr>
							<td>글제목</td>
							<td><input type="text" name="title" value="<%=vo.getTitle()%>"></td>
						</tr>
						<tr>
							<td>글내용</td>
							<td><textarea rows="10" name="content" style="width:100%" >
								<%=vo.getContent()%>
							</textarea></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<input type="button" value="수정하기" onclick="modifyCheck()">
								<input type="button" value="목록" onclick="location.href='list.board'">
								<input type="button" value="삭제하기" onclick="location.href='delete.board?num=<%=vo.getNum()%>'">
							</td>
						</tr>
						
					</table>
				</form>
			</div>
		</section>		
	
	<%@include file="../include/footer.jsp" %>
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script type="text/javascript">
		function modifyCheck(){
			//form은 유일하게 document.태그 이름으로 접근이 가능하다.
			if (document.regform.title.value == ''){
				alert("제목은 필수 사항입니다.");
				return;
			}
			else if(confirm("게시글을 등록 하시겠습니까?")){
				//확인창을 띄워서 확인 취소 중 선택하는 메서드
				document.regform.submit();
			}
		}
	
	</script>

</body>
</html>
