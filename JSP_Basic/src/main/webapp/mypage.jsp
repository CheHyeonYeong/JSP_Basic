<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String id = (String)session.getAttribute("id"); //type casting �ʿ�
    if(id==null){
    	
    	response.sendRedirect("login.jsp");
    }
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1><%=id %>�� ȯ���մϴ�.</h1>

<a href="logout.jsp">�α׾ƿ�</a><br>
<a href="modify_ok.jsp">��������</a><br>
<a href="delete_ok.jsp">ȸ��Ż��</a>
</body>
</html>