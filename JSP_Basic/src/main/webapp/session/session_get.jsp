<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
    <%
    //���ǿ� ����� ���� �������� ����Ǳ���� �Ǵ� �⺻ �ð� 30�б��� ��������������� ����̰����ϴ�
    
    String id = (String)session.getAttribute("id"); //type casting �ʿ�
    String name = (String)session.getAttribute("name"); //type casting �ʿ�
    
    //���� ���� �ð��� Ȯ��
    int time = session.getMaxInactiveInterval();
    
    //���� �����ð� ����
    session.setMaxInactiveInterval(3600); //1�ð����� ����
    int time2 = session.getMaxInactiveInterval();
    
    //Ư�� ���� ����
    session.removeAttribute("id");
    
    //��� ���� ����
    session.invalidate();
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	���̵� : <%=id %> <br>
	�̸� : <%=name %> <br>
	�����ð� �ʱ� : <%=time %><br>
	�����ð� ���� ���� : <%=time2 %><br>
</body>
</html>