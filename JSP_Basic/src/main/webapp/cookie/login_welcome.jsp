<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie[] cArr = request.getCookies(); //��Ű �迭�� ����
	String id ="";
	if(cArr!=null){
		
	//	out.println(cArr[0].getValue()+"�� ȯ���մϴ�<br>");
	for(Cookie c : cArr){
		if(c.getName().equals("user_id")){
			id = c.getValue();
		}
	}
}
%>


<%=id %>�� ȯ���մϴ�
</body>
</html>