<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String code = request.getParameter("code"); 
	
	String auth = (String)session.getAttribute("auth");

	if(code.equals(auth)){
		response.sendRedirect("reserve.jsp");
	}
	else{
		response.sendRedirect("auth.jsp");
	}
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