<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	/*
	1. ���̵� ����� �ް�
	2. ���̵� abc�̰� pw�� 1234�� �α��� �������� ���� user_id, id���� ���� ��Ű�� ����
	3. ��Ű ������ ��� ��Ű�� ����, cookie_login.jsp�� �̵�
	4. ���̵�, ��й�ȣ�� Ʋ�ȴٸ� cookie_login.jsp�� �̵� 
	5. ������ welcome ���������� ��Ű�� ����Ͽ� "id�� ȯ���մϴ�"�� ���
	*/
	
%>

<% 
	
	String id = request.getParameter("id"); // ���̵� �ޱ�
	String pw = request.getParameter("pw"); // ��й�ȣ �ޱ�
	String idCheck = request.getParameter("idCheck");
	
    if(id.equals("abc")&&pw.equals("1234")){
    	Cookie userIdCookie = new Cookie("user_id", id);
    	
		userIdCookie.setMaxAge(3600); // 1 hour expiration time
		response.addCookie(userIdCookie);
		
	      if (idCheck != null && idCheck.equals("y")) {
	           Cookie idCheckCookie = new Cookie("idCheck", id);
	           idCheckCookie.setMaxAge(60 * 60); // 1�ð� ���� ����
	           response.addCookie(idCheckCookie);
	       }
		response.sendRedirect("login_welcome.jsp");
    }
    else{
		response.sendRedirect("cookie_login.jsp");
    }
    
    
    
    %>