<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%-- applicationn 객체는 sessio 과 사용방법이 거의 비슷하다. set, get을 쓴다. 서버가 동작할 때 1개의
    application 객체가 생성되고 서버가 꺼질 때까지 유지됨 --%>
    <% 
    int count=0;
    if(application.getAttribute("visit")!=null){
    	count = (int)application.getAttribute("visit");
    }
    count++;
    application.setAttribute("visit", count);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
누적값 : <%=count %>
</body>
</html>