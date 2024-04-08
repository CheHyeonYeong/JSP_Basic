<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<%
	//idCheck 쿠키를 찾아서 idCheck 쿠키가 있다면 해당 값을 얻어서 id 안에 미리 값을 가지게 작성하는 코드이다.
	Cookie[] cArr = request.getCookies();
	String id = "";
	if(cArr != null){
		//cookie is not null
		for(int i =0;i<cArr.length;i++){
			if(cArr[i].getName().equals("idCheck")){
				id=cArr[i].getValue();
			}
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>Using Cookies</h2>

<form action ="cookie_login_ok.jsp" method="post">
	id : <input type="text" name="id" size="10" value="<%=id %>"><br>
	pw : <input type="password" name="pw" size="10" ><br>
	
	<input type="submit" value="login">
	<input type="checkbox" name="idCheck" value="y">아이디 기억하기

</form>
</body>
</html>