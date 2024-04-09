<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
    <%

    request.setCharacterEncoding("utf-8");
     String name = (String) request.getAttribute("name");
     double avg = (double) request.getAttribute("avg");
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>score_quiz02.jsp</title>
</head>
<body>

<%=name %>님 평균 <%=avg %>점 불합격
</body>
</html>