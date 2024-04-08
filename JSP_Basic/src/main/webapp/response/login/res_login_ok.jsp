<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    //controller의 역할을 한다
    
    /*
    login.jsp 페이지로부터 넘어온 id, pw를 받아 처리
    id가 abc1234이고 pw가 asd123이면 로그인 성공이라고 간주
    if id&pw {login_welcome page로 리다이렉트}
    if !id {login_id_fail.jsp 로 리다이렉트}
    if !pw (login_pw_fail.jsp 로 리다리렉트)
    */ 
    
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    
    if(id.equals("abc1234")){
    	if(pw.equals("asd123")){
    		response.sendRedirect("login_welcome.jsp");
    	}
    	else{
    		//패스워드 오류
    		response.sendRedirect("login_pw_fail.jsp");
    	}
    }
    else{
		response.sendRedirect("login_id_fail.jsp");
    }
    
    %>