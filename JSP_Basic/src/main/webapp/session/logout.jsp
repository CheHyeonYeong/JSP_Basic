<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    session.removeAttribute("id"); //����ó���ϴ� ������ ����, �α��� �� �� ��������� ���� ����
    session.invalidate();
    
    response.sendRedirect("session_login.jsp");
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