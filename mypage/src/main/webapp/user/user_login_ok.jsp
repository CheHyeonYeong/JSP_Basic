<%@page import="com.myweb.user.model.UserVO"%>
<%@page import="com.myweb.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	//dao ����
	UserDAO dao = UserDAO.getInstance();
	
	int result = dao.login(id, pw);
	if(result == 1){//�ߺ� �� ��� ���� ȸ�� ���� â���� ���ư���
		//�α��� ������ ȸ������ ������ �۾�
		UserVO vo = dao.getInfo(id);
		String name = vo.getName();
		
		
		//���̵�� �̸��� ���ǿ� ����
		session.setAttribute("user_id", id);
		session.setAttribute("user_name", name);
		
		//mypage.jsp�� �̵�
		
		response.sendRedirect("user_mypage.jsp");
		}
	else{// �ߺ��� ���� ��� ȸ������ ó�� ����
		out.write("<script>alert(\"�α��� �����߽��ϴ�.\");history.go(-1);</script>");
	}
%>