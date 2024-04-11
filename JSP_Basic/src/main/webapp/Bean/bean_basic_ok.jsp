<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    
    request.setCharacterEncoding("utf-8");
    
    /*String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String email = request.getParameter("email");*/
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	

	<jsp:useBean id="u1" class="com.bean.User" scope="page"/>
	<jsp:setProperty property="*" name="u1"/> <!-- 자동으로 알아서 들어감 -->
	
<%-- 	<!-- setProperty는 setter 메서드 사용 -->
	<jsp:setProperty property="id" name="u1" value="<%=id %>"/>
	<jsp:setProperty property="pw" name="u1" value="<%=pw %>"/>
	<jsp:setProperty property="name" name="u1" value="<%=name %>"/>
	<jsp:setProperty property="email" name="u1" value="<%=email %>"/>
	--%>
	<!-- getProperty는 getter 메서드 사용 -->
	<jsp:getProperty property="id" name="u1"/><br>
	<jsp:getProperty property="pw" name="u1"/><br>
	<jsp:getProperty property="name" name="u1"/><br>
	<jsp:getProperty property="email" name="u1"/><br>	
	
	
	
</body>
</html>