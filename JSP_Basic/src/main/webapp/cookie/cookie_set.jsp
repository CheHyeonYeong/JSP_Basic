<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie idCoo = new Cookie("user_id","kkk123");
	Cookie nameCoo = new Cookie("user_name", "ȫ�浿");
	
	//2. ��Ű �ð� ����
	idCoo.setMaxAge(60*60); //�� �ð�
	nameCoo.setMaxAge(20); //20��
	
	//3. ���� ��ü�� ��Ű ž�� �� Ŭ���̾�Ʈ�� ���� ������ ���� �� �ش� ������ �������� �ȴ�.
	response.addCookie(idCoo);
	response.addCookie(nameCoo);
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