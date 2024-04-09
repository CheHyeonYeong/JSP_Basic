<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>콘서트 예약</title>
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
	// 예약 현황이 있다면 예약 좌석을 꺼내서 처리...
	List<String> list = new ArrayList<>();
	if(application.getAttribute("seats")!=null){
		list= (List<String>)application.getAttribute("seats");
	}

	
%>
<div class="container">
  <h2>콘서트 예약</h2>
  <h3>예약할 좌석을 선택하세요</h3>
  <hr>
  <h3>좌석 배치도</h3>
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
    <input type="submit" value="예약">
    <input type="reset" value="취소">
  </form>
</div>
</body>
</html>
