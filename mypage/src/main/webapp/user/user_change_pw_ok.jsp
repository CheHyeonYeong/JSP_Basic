<%@page import="com.myweb.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	if(result == 0){//예전 비밀번호 실패
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
			alert("비밀번호 변경처리 되었습니다.");
			location.href="user_mypage.jsp";
			</script>
			
			<%
		}
		else{
			%>
			<script>
			alert("비밀번호 변경에 실패하였습니다.");
			location.href="user_mypage.jsp";
			</script>
			
			<%
		}
		
	}
%>