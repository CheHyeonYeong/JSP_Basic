<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	Email : ${sessionScope.vo.email}<br> 
	ID : ${sessionScope.id}<br>
	admin : ${applicationScope.admin }
</body>
</html>