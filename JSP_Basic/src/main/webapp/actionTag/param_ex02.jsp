<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:forward page="param_ex03.jsp">
	<jsp:param value="pengine" name="nick"/>
	
</jsp:forward>

<%--forward �� �� �Ķ���� ���� �߰��ؼ� �ѱ���� �� ��� --%>
</body>
</html>