<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl-foreach</title>
</head>
<body>
    <%
    //1~100까지 합
    int sum = 0;
    for(int i =1;i<=100;i++){sum+=i;    }
    %>
<%=sum %>

<c:set var="sum" value="0" />

<c:forEach var="i" begin="1" end="100" step="1">
    <c:set var="sum" value="${sum+i }" />
</c:forEach>
 <br>
결과 : ${sum}
<hr>
<h2>구구단 3단 출력</h2>

<c:forEach var="i" begin="1" end="9" step="1">

	3 X ${i } = ${i*3 }  <br>

</c:forEach>


<h2> 모든 구구단 출력하기</h2>
<c:forEach var="i" begin="1" end="9" step="1">
	<h2> ${i} 단 출력</h2>
	<c:forEach var="j" begin="1" end="9" step="1">
		${i} X ${j } = ${i*j }, 
	</c:forEach>
</c:forEach>

<h2>향상된 for문</h2>
<%
	int[] arr = {1,2,34,5,6,7,8};
	for(int a: arr){
		out.println(a);
	}
%>

<br>

<c:set var="arr2" value="<%= new int[] {10,20,30,40,50,60} %>"></c:set>
<c:forEach var="i" items="${arr2 }">
	${i }
</c:forEach>
</body>
</html>
