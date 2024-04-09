<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    /*
    1.앞에서 넘어온 폼값을 받아서 평균을 구합니다.
    2.평균이 60점 이상이면 score_quiz03.jsp로 이동
      "~~님 평균 xx점 합격" 을 출력
    3.평균이 60점 미만이면 score_quiz04.jsp로 이동
      "~~님 평균 xx점 불합격" 을 출력
     
    조건) 세션 사용 X
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
    