<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<%
	//idCheck ��Ű�� ã�Ƽ� idCheck ��Ű�� �ִٸ� �ش� ���� �� id �ȿ� �̸� ���� ������ �ۼ��ϴ� �ڵ��̴�.
	Cookie[] cArr = request.getCookies();
	String id = "";
	if(cArr != null){
		//cookie is not null
		for(int i =0;i<cArr.length;i++){
			if(cArr[i].getName().equals("idCheck")){
				id=cArr[i].getValue();
			}
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>Using Cookies</h2>

<form action ="cookie_login_ok.jsp" method="post">
	id : <input type="text" name="id" size="10" value="<%=id %>"><br>
	pw : <input type="password" name="pw" size="10" ><br>
	
	<input type="submit" value="login">
	<input type="checkbox" name="idCheck" value="y">���̵� ����ϱ�

</form>
</body>
</html>