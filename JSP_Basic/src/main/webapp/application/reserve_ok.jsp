<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//1. ����Ʈ �� ���� ����(���� �¼��� ������ ����Ʈ, �纻�� ������ ����Ʈ)
	List<String> list = new ArrayList<>();
	List<String> temp = new ArrayList<>();
	
	//2.application ��ü�� ���� ��Ȳ�� �ִ� ��� ���� ����Ʈ�� ����
	if(application.getAttribute("seats")!=null){
		list= (List<String>)application.getAttribute("seats");
	}
	
	//3. �տ��� �Ѿ�� �� ó��
	String[] arr = request.getParameterValues("seat");
	
	//4. arr�� ����� ���� list�� ���ԵǾ� �ִ��� Ȯ�� contains (��)
	for(String s : arr){
		if(list.contains(s)){ //�ش� �¼��� ����� ���
			break;
		}
		else{ //�ش� �¼��� ������� ���� ���
			temp.add(s);
		}
	}
	
	//5. arr ���̿� temp ���� üũ, ���ٸ� �ߺ��� �¼��� ���� ���.. ���� ��Ȳ(list)�� �߰�
	if(arr.length ==temp.size()){
		list.addAll(temp);
	}
	
	//6. application�� list�� �����Ѵ�.
	application.setAttribute("seats", list);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>reserve_ok.jsp</title>
</head>
<body>
<div align="center">

	<h2>���� ��û ���</h2>
	<P>
		<b>������ �¼� : <% for(String s : arr){out.print(s+", "); } %></b>
		<b>���� ��û ��� : <%=arr.length==temp.size()?"����":"����" %></b>
		<br>
		<% if(arr.length !=temp.size()){
			out.println("�̹� ����� �¼��� �ֽ��ϴ�.");
			
		} %>
	</P>
	
	<a href="reserve.jsp"> �ٽ� �����ϱ�</a>
</div>

</body>
</html>