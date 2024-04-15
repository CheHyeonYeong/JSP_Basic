<%@page import="com.myweb.user.model.UserVO"%>
<%@page import="com.myweb.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%

	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	
	//dao 생성
	UserDAO dao = UserDAO.getInstance();
	
	UserVO vo = new UserVO(id, pw, name, email, address,null);
	
	//회원 가입 전에 아이디가 존재하는지 중복 검사 실행
	int result = dao.IdConfirm(id);
	
	if(result == 1){//중복 시 경고 띄우고 회원 가입 창으로 돌아가기
		out.write("<script>alert(\"아이디가 중복되었습니다.\");history.go(-1);</script>");
	}
	else{// 중복이 없는 경우 회원가입 처리 진행
		int result2 = dao.join(vo);
		if(result2==1){%>
			<script>
			alert("회원가입을 축하합니다");
			location.href="user_login.jsp";
			</script>
		<%}
		else{%>
			<script>
			alert("회원가입이 실패됐습니다");
			history.go(-1);
			</script>
		<%}	
	}
%>