<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String id = (String)session.getAttribute("id"); //type casting 필요
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
<h1><%=id %>님 환영합니다.</h1>

<a href="logout.jsp">로그아웃</a><br>
<a href="modify_ok">정보수정</a><br> 
<!-- DB로 부터 객체 정보를 담아와서 vo에 담아줘야 한다, update.jsp 를 그대로 나온다. 값을 변경해야 한다.
 update_ok로 가야함. 수정이 다되면 my_page로 다시 온다.  -->
<a href="delete_ok">회원탈퇴</a>
</body>
</html>