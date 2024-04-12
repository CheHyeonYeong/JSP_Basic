<%@page import="com.jdbc.domain.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    //id는 세션을 통해서
    String id = (String)session.getAttribute("id"); //사용자 인증 정보를 지속적으로 확인한다!
    
    UserVO vo = (UserVO)request.getAttribute("vo");
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>update.jsp</title>
</head>
<body>
	<h2>회원 수정 연습</h2>
	<body>
	<form action="update_ok" method="post">
	ID : <input type="text" name="id" value="<%=id%>" readonly><br> 
	PW : <input type="password" name="pw" disabled><br>
	이름 : <input type="text" name="name" value="<%=vo.getName()%>"><br>
	<select name="phone1" >
		<option <%=vo.getPhone1().equals("010") ? "selected":""%>>010</option>
		<option <%=vo.getPhone1().equals("011") ? "selected":""%>>011</option>
		<option <%=vo.getPhone1().equals("018") ? "selected":""%>>018</option>
	</select>
	-<input type="text" name = phone2 value="<%= vo.getPhone2()%>"><br>
	<%if(vo.getGender()==null || vo.getGender().equals("m")){ %>
	<input type="radio" name="gender" value="m" checked/>남자
	<input type="radio" name="gender" value="w"/>여자 <br>
	
	<%}else{ %>
	<input type="radio" name="gender" value="m"/>남자
	<input type="radio" name="gender" value="w" checked/>여자 <br>
	
	<%} %>
	<input type = "submit" value= "가입">
	</form>
	
	<form action="modify_ok" method="post">
  		<button type="submit">비밀번호 수정</button>
	</form>

	

</body>
</html>