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