<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	//��Ű ����ϱ�
	//��Ű�� ��û �� �ڵ����� ���۵ǰ�, request�� �ڵ����� ����˴ϴ�.
	Cookie[] cArr = request.getCookies(); //��Ű �迭�� ����
	if(cArr!=null){
		//cookie is not null, then run
		for(int i =0;i<cArr.length;i++){
			out.println(cArr[i].getName()+" : ");//cookie's name
			out.println(cArr[i].getValue()+"<br>");
		}
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>cookie_get.jsp</title>
</head>
<body>

</body>
</html>