<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_etc2.jsp</title>
</head>
<body>
	<c:import url="jstl_etc.jsp"></c:import>
	
	    <c:catch var="exception">
        <%-- 예외가 발생할 가능성이 있는 코드 --%>
        <% int result = 10 / 0; %>
    </c:catch>
    
    <c:if test="${exception ne null}">
        <%-- 예외가 발생했을 때 실행될 코드 --%>
        <p>An error occurred: ${exception.message}</p>
    </c:if>
    
    <c:if test="${exception eq null}">
        <%-- 예외가 발생하지 않았을 때 실행될 코드 --%>
        <p>No error occurred.</p>
    </c:if>
    
    <h2>c:redirect 결과 확인</h2>
    ${param.abc }<br>
     <h1>URL Example</h1>
    
    <%-- 상대 경로를 사용하여 URL 생성 --%>
    <c:url var="relativeUrl" value="/products/detail.jsp">
        <c:param name="id" value="123" />
    </c:url>
    <p>Relative URL: <a href="${relativeUrl}">${relativeUrl}</a></p>
    
    <%-- 절대 경로를 사용하여 URL 생성 --%>
    <c:url var="absoluteUrl" value="https://www.example.com/products/detail.jsp">
        <c:param name="id" value="123" />
    </c:url>
    <p>Absolute URL: <a href="${absoluteUrl}">${absoluteUrl}</a></p>
    
    <%-- 컨텍스트 루트 경로를 사용하여 URL 생성 --%>
    <c:url var="contextRootUrl" value="/">
        <c:param name="page" value="home.jsp" />
    </c:url>
    <p>Context Root URL: <a href="${contextRootUrl}">${contextRootUrl}</a></p>
</body>
</html>