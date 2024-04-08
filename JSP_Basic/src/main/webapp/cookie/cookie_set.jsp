<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie idCoo = new Cookie("user_id","kkk123");
	Cookie nameCoo = new Cookie("user_name", "홍길동");
	
	//2. 쿠키 시간 설정
	idCoo.setMaxAge(60*60); //한 시간
	nameCoo.setMaxAge(20); //20초
	
	//3. 응답 객체에 쿠키 탑재 ⇒ 클라이언트가 응답 내용을 받을 때 해당 내용을 가져가게 된다.
	response.addCookie(idCoo);
	response.addCookie(nameCoo);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>