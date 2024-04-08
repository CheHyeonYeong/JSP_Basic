<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	/*
	1. 아이디 비번을 받고
	2. 아이디가 abc이고 pw가 1234면 로그인 성공으로 간주 user_id, id값을 갖는 쿠키를 생성
	3. 쿠키 문법을 사용 쿠키를 전송, cookie_login.jsp로 이동
	4. 아이디, 비밀번호가 틀렸다면 cookie_login.jsp로 이동 
	5. 맞으면 welcome 페이지에서 쿠키를 사용하여 "id님 환영합니다"를 출력
	*/
	
%>

<% 
	
	String id = request.getParameter("id"); // 아이디 받기
	String pw = request.getParameter("pw"); // 비밀번호 받기
	String idCheck = request.getParameter("idCheck");
	
    if(id.equals("abc")&&pw.equals("1234")){
    	Cookie userIdCookie = new Cookie("user_id", id);
    	
		userIdCookie.setMaxAge(3600); // 1 hour expiration time
		response.addCookie(userIdCookie);
		
	      if (idCheck != null && idCheck.equals("y")) {
	           Cookie idCheckCookie = new Cookie("idCheck", id);
	           idCheckCookie.setMaxAge(60 * 60); // 1시간 동안 유지
	           response.addCookie(idCheckCookie);
	       }
		response.sendRedirect("login_welcome.jsp");
    }
    else{
		response.sendRedirect("cookie_login.jsp");
    }
    
    
    
    %>