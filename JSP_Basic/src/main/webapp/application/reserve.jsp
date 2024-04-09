<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ܼ�Ʈ ����</title>
<style>
  body {
    font-family: Arial, sans-serif;
  }
  .container {
    width: 80%;
    margin: 0 auto;
    text-align: center;
  }
  h2, h3 {
    color: #333;
  }
  table {
    margin: 0 auto;
  }
  table td {
    padding: 5px;
  }
  input[type="checkbox"] {
    transform: scale(1.5);
    margin: 5px;
  }
  input[type="submit"] {
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }
  input[type="submit"]:hover {
    background-color: #0056b3;
  }
  input[type="reset"] {
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }
  input[type="reset"]:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>

<%
	// ���� ��Ȳ�� �ִٸ� ���� �¼��� ������ ó��...
	List<String> list = new ArrayList<>();
	if(application.getAttribute("seats")!=null){
		list= (List<String>)application.getAttribute("seats");
	}

	
%>
<div class="container">
  <h2>�ܼ�Ʈ ����</h2>
  <h3>������ �¼��� �����ϼ���</h3>
  <hr>
  <h3>�¼� ��ġ��</h3>
  <form action="reserve_ok.jsp">
    <table>
      <tbody>
        <tr>
          <% 
          out.print("<td>   </td>");
          for(char i=65; i<=90; i++) { 
          %>
            <td><strong><%= i %></strong></td>
          <% } %>
        </tr>
        <% for(int i=1; i<7; i++) { %>
          <tr>
            <td><strong><%= i %></strong></td>
            <% for(int j=1; j<27; j++) { 
            	if(list.contains((char)(j+64)+"-"+i)){%>
            		<td><input type="checkbox" name="seat" value="<%= (char)(j+64) + "-" + i %>" disabled></td>
            	
            	<%
            	}
            	else{%>
        		<td><input type="checkbox" name="seat" value="<%= (char)(j+64) + "-" + i %>"></td>
        	<%
            	}
            
            %>
            
            
              
            <% } %>
          </tr>
        <% } %>
      </tbody>
    </table>
    <br>
    <input type="submit" value="����">
    <input type="reset" value="���">
  </form>
</div>
</body>
</html>
