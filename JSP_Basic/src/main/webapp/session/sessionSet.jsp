<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<%
	//������ ��Ű�� ���� ���������� �����ϱ� ���� ����ϴ� jsp ���� ��ü�̴�.
	//setAttribute("�̸�", ��)���� ����
	session.setAttribute("id", "kkk123");
	session.setAttribute("name","ȫ�浿");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>session Set</title>
</head>
<body>
	<a href="session_get.jsp">���� Ȯ���ϱ�</a>
</body>
</html>