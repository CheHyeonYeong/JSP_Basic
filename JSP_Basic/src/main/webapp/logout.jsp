<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
	<%
    session.removeAttribute("id"); //����ó���ϴ� ������ ����, �α��� �� �� ��������� ���� ����
    session.invalidate();
    
    response.sendRedirect("login.jsp");
    %>