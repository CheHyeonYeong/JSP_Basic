<%@page import="com.myweb.user.model.UserVO"%>
<%@page import="com.myweb.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	if(id ==null){
		response.sendRedirect("user_login.jsp");
	}
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	
	//dao ����
	UserDAO dao = UserDAO.getInstance();
	
	UserVO vo = new UserVO(id, null, name, email, address,null);
	int result = dao.update(vo);
	
	if(result==1){
		session.setAttribute("user_name",name);
	%>
		<script>
		alert("ȸ�������� �����Ǿ����ϴ�");
		location.href="user_mypage.jsp";
		</script>
	<%}
	else{%>
		<script>
		alert("ȸ������ ������ �����߽��ϴ�);
		location.href="user_mypage.jsp";
		</script>
	<%}	
	
%>