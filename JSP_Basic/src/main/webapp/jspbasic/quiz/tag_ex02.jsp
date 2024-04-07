<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
int total = 0;

public int randomNum() {
    Random ran = new Random();
    int num = ran.nextInt(8) + 2; // 2단부터 9단까지 랜덤 숫자 생성
    return num;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
</head>
<body>
    <%
    total++;
    %>
    <p>
        페이지 누적 요청: <%=total%><br>
        <%
        if (total % 10 == 0) {
            out.println("당첨되었습니다!");
        }
        %>
        <br>
        매 10번째 방문자에게 기프티콘을 드립니다.
    </p>
    <hr>
    <h2>랜덤 구구단 출력</h2>
    <%
    int randomDan = randomNum();
    for (int i = 1; i <= 9; i++) {
        out.println(randomDan + " x " + i + " = " + randomDan * i + "<br>");
    }
    %>
</body>
</html>