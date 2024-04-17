<%@page import="com.myweb.user.model.UserVO"%>
<%@page import="com.myweb.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%

	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	if(id ==null){
		response.sendRedirect("user_login.jsp");
	}
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	
	//dao 생성
	UserDAO dao = UserDAO.getInstance();
	
	UserVO vo = new UserVO(id, null, name, email, address,null);
	int result = dao.update(vo);
	
	if(result==1){
		session.setAttribute("user_name",name);
	%>
		<script>
		alert("회원정보가 수정되었습니다");
		location.href="user_mypage.jsp";
		</script>
	<%}
	else{%>
		<script>
		alert("회원정보 수정에 실패했습니다);
		location.href="user_mypage.jsp";
		</script>
	<%}	
	
%>