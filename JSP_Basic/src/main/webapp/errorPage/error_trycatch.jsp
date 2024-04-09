<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>error_trycatch.jsp</title>
</head>
<body>
	<%
		try{
			String num = request.getParameter("num");
			Integer.parseInt(num);
			
		}catch(Exception e){
			out.print("num 값이 없습니다.");
		}
	%>
</body>
</html>