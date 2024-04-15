<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
session.invalidate();

response.sendRedirect("http://localhost:8080/mypage/index.jsp");
%>