<%@page import="com.myweb.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	String id = (String)session.getAttribute("user_id");
	
	if(id ==null){
		response.sendRedirect("user_login.jsp");
	}
	
	request.setCharacterEncoding("utf-8");
	
	String pw = request.getParameter("pw");
	UserDAO dao = UserDAO.getInstance();
	int result = dao.login(id,pw);
	
	if(result == 0){//���� ��й�ȣ ����
		%>
		<script>
		
		location.href="user_mypage.jsp";
		</script>
		
		<%		
	}else{
		int result2 = dao.delete(id);
		if(result2==1){
			session.invalidate();
			%>
			<script>
			alert("ȸ�� Ż�� �Ǿ����ϴ�.");
			location.href="http://localhost:8080/mypage/index.jsp";
			</script>
			<%
		}
		else{
			%>
			<script>
			alert("ȸ�� Ż�� �����Ͽ����ϴ�.");
			location.href="user_mypage.jsp";
			</script>
			<%
		}
		
	}
%>