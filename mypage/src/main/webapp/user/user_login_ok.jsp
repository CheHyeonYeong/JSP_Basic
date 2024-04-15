<%@page import="com.myweb.user.model.UserVO"%>
<%@page import="com.myweb.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	//dao 생성
	UserDAO dao = UserDAO.getInstance();
	
	int result = dao.login(id, pw);
	if(result == 1){//중복 시 경고 띄우고 회원 가입 창으로 돌아가기
		//로그인 성공시 회원정보 얻어오는 작업
		UserVO vo = dao.getInfo(id);
		String name = vo.getName();
		
		
		//아이디와 이름을 세션에 저장
		session.setAttribute("user_id", id);
		session.setAttribute("user_name", name);
		
		//mypage.jsp로 이동
		
		response.sendRedirect("user_mypage.jsp");
		}
	else{// 중복이 없는 경우 회원가입 처리 진행
		out.write("<script>alert(\"로그인 실패했습니다.\");history.go(-1);</script>");
	}
%>