<%@page import="com.jdbc.domain.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    //id�� ������ ���ؼ�
    String id = (String)session.getAttribute("id"); //����� ���� ������ ���������� Ȯ���Ѵ�!
    
    UserVO vo = (UserVO)request.getAttribute("vo");
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>update.jsp</title>
</head>
<body>
	<h2>ȸ�� ���� ����</h2>
	<body>
	<form action="update_ok" method="post">
	ID : <input type="text" name="id" value="<%=id%>" readonly><br> 
	PW : <input type="password" name="pw" disabled><br>
	�̸� : <input type="text" name="name" value="<%=vo.getName()%>"><br>
	<select name="phone1" >
		<option <%=vo.getPhone1().equals("010") ? "selected":""%>>010</option>
		<option <%=vo.getPhone1().equals("011") ? "selected":""%>>011</option>
		<option <%=vo.getPhone1().equals("018") ? "selected":""%>>018</option>
	</select>
	-<input type="text" name = phone2 value="<%= vo.getPhone2()%>"><br>
	<%if(vo.getGender()==null || vo.getGender().equals("m")){ %>
	<input type="radio" name="gender" value="m" checked/>����
	<input type="radio" name="gender" value="w"/>���� <br>
	
	<%}else{ %>
	<input type="radio" name="gender" value="m"/>����
	<input type="radio" name="gender" value="w" checked/>���� <br>
	
	<%} %>
	<input type = "submit" value= "����">
	</form>
	
	<form action="modify_ok" method="post">
  		<button type="submit">��й�ȣ ����</button>
	</form>

	

</body>
</html>