<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    /*
    1.�տ��� �Ѿ�� ������ �޾Ƽ� ����� ���մϴ�.
    2.����� 60�� �̻��̸� score_quiz03.jsp�� �̵�
      "~~�� ��� xx�� �հ�" �� ���
    3.����� 60�� �̸��̸� score_quiz04.jsp�� �̵�
      "~~�� ��� xx�� ���հ�" �� ���
     
    ����) ���� ��� X
    */
    
    String name = request.getParameter("name");
    int ko = Integer.parseInt(request.getParameter("ko"));
    int English = Integer.parseInt(request.getParameter("en"));
    int Math = Integer.parseInt(request.getParameter("math"));
    
    int sum = ko + English + Math;
    double avg = ((double) sum / 3)*100.0;
    request.setAttribute("name", name);
    request.setAttribute("avg",avg);
    
    if (avg >= 60) {
        request.getRequestDispatcher("score_quiz03.jsp").forward(request, response);
    } else {
        request.getRequestDispatcher("score_quiz04.jsp").forward(request, response);
    }
    %>
    
    <jsp:forward page="quiz_ex03.jsp"/>
    