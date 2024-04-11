<%@page import="com.bean.User"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
	request.setCharacterEncoding("utf-8");
    
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String pwC = request.getParameter("pw_check");
    
    User user = new User();
	user.setId(id);
	user.setPw(pw);
	
	if(pwC.equals(pw)){
    	request.setAttribute("user", user);
    	RequestDispatcher dp = request.getRequestDispatcher("quiz03.jsp");
    	dp.forward(request, response);
    }
    else{
    	//그냥 리다이엑션 하고 싶다.
    	response.sendRedirect("quiz04.jsp");
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