<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8");
      String name = request.getParameter("name");
      double height = Double.parseDouble(request.getParameter("height"));
      double weight = Double.parseDouble(request.getParameter("weight"));
        
      double heightM = height / 100;
      double bmi = weight / (heightM * heightM);
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 지수 결과</title>
</head>
<body>
    <h2>BMI 지수 결과</h2>                   
    이름: <%= name %><br>
    키: <%= height %> cm<br>
    몸무게: <%= weight %> kg<br>
    BMI 지수: <%= String.format("%.2f", bmi) %><br>
    
    <%
        String status;
        if (bmi >= 25) {
            status = "과체중";
        } else if (bmi < 18) {
            status = "저체중";
        } else {
            status = "정상";
        }
    %>
    
    체중 상태: <%= status %>
</body>
</html>