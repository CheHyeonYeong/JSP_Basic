<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie[] cArr = request.getCookies(); //쿠키 배열로 받음
	String id ="";
	if(cArr!=null){
		
	//	out.println(cArr[0].getValue()+"님 환영합니다<br>");
	for(Cookie c : cArr){
		if(c.getName().equals("user_id")){
			id = c.getValue();
		}
	}
}
%>


<%=id %>님 환영합니다
</body>
</html>