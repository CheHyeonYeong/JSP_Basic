<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/mypage/src/main/webapp/jstl/jstl_redirect.jsp</title>
</head>
<body>
<c:redirect url="jstl_etc2.jsp"><c:param name="abc" value="안녕? redirect 테스트야"></c:param></c:redirect>
</body>
</html>