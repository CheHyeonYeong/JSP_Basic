<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%-- applicationn ��ü�� sessio �� ������� ���� ����ϴ�. set, get�� ����. ������ ������ �� 1����
    application ��ü�� �����ǰ� ������ ���� ������ ������ --%>
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
������ : <%=count %>
</body>
</html>