<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.time.LocalDateTime, java.time.ZoneId" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%


// date와 lt 변수가 어디서 가져오는지 명확하지 않으므로, 임의의 값으로 대체합니다.
// 예를 들어, 현재 날짜와 시간을 사용하려면 다음과 같이 할 수 있습니다.

	Date now = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	//LocalDateTime localDateTimeNow = LocalDateTime.now();
	
	// Cookie 값으로는 문자열을 사용해야 합니다.
	Cookie show = new Cookie("show", sdf.format(now));
	
	// 쿠키 시간 설정
	show.setMaxAge(30); // 1시간
	
	// 응답 객체에 쿠키 추가
response.addCookie(show);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<a href="cookie02.jsp">쿠키에 저장된 값 확인해보기</a>
</body>
</html>
