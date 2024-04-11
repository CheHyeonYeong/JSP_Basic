<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>액션태그로 자바 bean 사용</h2>
<jsp:useBean id="user" class="com.bean.User" scope="request"/>

<jsp:setProperty property="id" name="user" value="kkk123"/>
<jsp:setProperty property="name" name="user" value="chaeHyeonyeong"/>
<jsp:forward page="bean_use_tag.jsp"/>

</body>
</html>