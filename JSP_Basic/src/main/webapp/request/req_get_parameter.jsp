<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<% 
	// 요청 파라미터 값 가져오기 
	String id = request.getParameter("id"); 
	String pw = request.getParameter("pw"); 
	//체크박스는 values메소드로 받아옴
	String[] intro = request.getParameterValues("intro"); 
	String major = request.getParameter("major"); 
	String phone = request.getParameter("phone"); 
	String name = request.getParameter("name"); 
	String address = request.getParameter("address"); 
%>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8">
<title>req_get_parameter.jsp</title> 
</head> 
<body> 
	아이디: <%=id%><br>
	비밀번호: <%=pw%><br>
	이름: <%=name%><br>
	주소: <%=address%><br>
	관심분야: <%=Arrays.toString(intro) %><br>
	전공: <%=major%><br>
	통신사: <%=phone%><br>
</body> 
</html>