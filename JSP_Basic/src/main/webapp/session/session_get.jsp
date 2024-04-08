<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
    <%
    //세션에 저장된 값은 브라우저가 종료되기까지 또는 기본 시간 30분까지 어느페이지에서나 사용이가능하다
    
    String id = (String)session.getAttribute("id"); //type casting 필요
    String name = (String)session.getAttribute("name"); //type casting 필요
    
    //세션 유지 시간을 확인
    int time = session.getMaxInactiveInterval();
    
    //세션 유지시간 변경
    session.setMaxInactiveInterval(3600); //1시간으로 변경
    int time2 = session.getMaxInactiveInterval();
    
    //특정 세션 삭제
    session.removeAttribute("id");
    
    //모든 세션 삭제
    session.invalidate();
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	아이디 : <%=id %> <br>
	이름 : <%=name %> <br>
	유지시간 초기 : <%=time %><br>
	유지시간 변경 이후 : <%=time2 %><br>
</body>
</html>