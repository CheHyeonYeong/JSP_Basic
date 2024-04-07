<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//out.println(), break 사용하여 구구단 4단 구현
	int i =1;
	while(true) {
		out.println("4 x " + i +" = " + 4 * i + "<br>");
		//out.println("================================");
	
		out.println("<br>");
		if(i==9) {
			break;
		} 
		i++;
	}
	%>
	<% 
	for(int j=1; j<=20; j++) {
		%>
		<input type = "checkbox" name = "test">		
		<%
		} 
		%>
	

</body>
</html>