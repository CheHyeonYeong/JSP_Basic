<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.time.LocalDateTime, java.time.ZoneId" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%


// date�� lt ������ ��� ���������� ��Ȯ���� �����Ƿ�, ������ ������ ��ü�մϴ�.
// ���� ���, ���� ��¥�� �ð��� ����Ϸ��� ������ ���� �� �� �ֽ��ϴ�.

	Date now = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	//LocalDateTime localDateTimeNow = LocalDateTime.now();
	
	// Cookie �����δ� ���ڿ��� ����ؾ� �մϴ�.
	Cookie show = new Cookie("show", sdf.format(now));
	
	// ��Ű �ð� ����
	show.setMaxAge(30); // 1�ð�
	
	// ���� ��ü�� ��Ű �߰�
response.addCookie(show);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<a href="cookie02.jsp">��Ű�� ����� �� Ȯ���غ���</a>
</body>
</html>
