<%@page import="java.util.Arrays"%>
<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//�ڹ� uuid �ߺ����� �ʴ� 16��Ʈ(����) �� ���� -> ��ü 16����Ʈ ���̷� ����
	UUID uuid = UUID.randomUUID();
	//splite�� Ư�� ���ڿ��� �������� �ڸ��� �޼���
	String struuid = uuid.toString();
	String[] arr = struuid.split("-");
	System.out.println(Arrays.toString(arr));
	
	session.setAttribute("auth", arr[1]);
	

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>auth.jsp</title>
</head>
<body>
<h2>���� ������</h2>
<form action="auth_ok.jsp">

<h3>�������� : <del><%=arr[1] %></del></h3>
�� ���ڿ��� �Է��ϼ��� : <input type="text" name="code" size="8">
<input type="submit" value="����">
</form>
</body>
</html>