<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    //controller�� ������ �Ѵ�
    
    /*
    login.jsp �������κ��� �Ѿ�� id, pw�� �޾� ó��
    id�� abc1234�̰� pw�� asd123�̸� �α��� �����̶�� ����
    if id&pw {login_welcome page�� �����̷�Ʈ}
    if !id {login_id_fail.jsp �� �����̷�Ʈ}
    if !pw (login_pw_fail.jsp �� ���ٸ���Ʈ)
    */ 
    
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    
    if(id.equals("abc1234")){
    	if(pw.equals("asd123")){
    		response.sendRedirect("login_welcome.jsp");
    	}
    	else{
    		//�н����� ����
    		response.sendRedirect("login_pw_fail.jsp");
    	}
    }
    else{
		response.sendRedirect("login_id_fail.jsp");
    }
    
    %>