<%@page import="com.myweb.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = (String)session.getAttribute("user_id");
	
	if(id ==null){
		response.sendRedirect("user_login.jsp");
	}
	
	request.setCharacterEncoding("utf-8");
	
	String oldPw = request.getParameter("old_pw");
	String newPw = request.getParameter("new_pw");
	UserDAO dao = UserDAO.getInstance();
	int result = dao.login(id,oldPw);
	
	if(result == 0){//���� ��й�ȣ ����
		%>
		<script>
		location.href="user_mypage.jsp";
		</script>
		
		<%		
	}else{
		int result2 = dao.changePW(id,newPw);
		if(result2==1){
			%>
			<script>
			alert("��й�ȣ ����ó�� �Ǿ����ϴ�.");
			location.href="user_mypage.jsp";
			</script>
			
			<%
		}
		else{
			%>
			<script>
			alert("��й�ȣ ���濡 �����Ͽ����ϴ�.");
			location.href="user_mypage.jsp";
			</script>
			
			<%
		}
		
	}
%>