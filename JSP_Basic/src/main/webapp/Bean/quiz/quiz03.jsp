<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="user" class="com.bean.User" scope="request" />
	<jsp:getProperty property="id" name="user"/> ���� ȸ�� ������ �����մϴ�. ��й�ȣ�� 
	<jsp:getProperty property="pw" name="user"/>�Դϴ�.
</body>
</html>