<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 지수 계산기</title>
</head>
<body>
    <h2>BMI 지수 계산기</h2>
    <form action="req_quiz_result.jsp" method="post">
        이름: <input type="text" name="name"><br>
        키(cm): <input type="text" name="height"><br>
        몸무게(kg): <input type="text" name="weight"><br>
        <input type="submit" value="BMI 계산">
    </form>
</body>
</html>