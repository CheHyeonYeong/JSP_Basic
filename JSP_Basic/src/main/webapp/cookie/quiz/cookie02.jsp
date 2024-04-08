<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
//쿠키 사용하기
//쿠키는 요청 시 자동으로 전송되고, request에 자동으로 저장됩니다.
	Cookie[] cArr = request.getCookies(); //쿠키 배열로 받음
	boolean flag = false;
	if(cArr!=null){
		//cookie is not null, then run
		for(int i =0;i<cArr.length;i++){
			if(cArr[i].getName().equals("show")){
				out.println(cArr[i].getValue()+"<br>");
				flag=true;
			}
		}
	}
	
	if(!flag){
		out.println("쿠키가 없습니다");
	}
%>
<!DOCTYPE html>

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>