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
	
	//dao ����
	UserDAO dao = UserDAO.getInstance();
	
	UserVO vo = new UserVO(id, pw, name, email, address,null);
	
	//ȸ�� ���� ���� ���̵� �����ϴ��� �ߺ� �˻� ����
	int result = dao.IdConfirm(id);
	
	if(result == 1){//�ߺ� �� ��� ���� ȸ�� ���� â���� ���ư���
		out.write("<script>alert(\"���̵� �ߺ��Ǿ����ϴ�.\");history.go(-1);</script>");
	}
	else{// �ߺ��� ���� ��� ȸ������ ó�� ����
		int result2 = dao.join(vo);
		if(result2==1){%>
			<script>
			alert("ȸ�������� �����մϴ�");
			location.href="user_login.jsp";
			</script>
		<%}
		else{%>
			<script>
			alert("ȸ�������� ���еƽ��ϴ�");
			history.go(-1);
			</script>
		<%}	
	}
%>