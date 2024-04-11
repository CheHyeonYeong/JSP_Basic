<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>bean_use_tag.jsp</title>
</head>
<body>
	<jsp:useBean id="user" class="com.bean.User" scope="request" />
	<jsp:getProperty property="id" name="user"/>
	<jsp:getProperty property="name" name="user"/>

</body>
</html>	