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
	
	if(result == 0){//예전 비밀번호 실패
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
			alert("회원 탈퇴 되었습니다.");
			location.href="http://localhost:8080/mypage/index.jsp";
			</script>
			<%
		}
		else{
			%>
			<script>
			alert("회원 탈퇴에 실패하였습니다.");
			location.href="user_mypage.jsp";
			</script>
			<%
		}
		
	}
%>