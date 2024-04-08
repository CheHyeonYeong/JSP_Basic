<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
 <% 

 	String ageParam = request.getParameter("age");
 	int age;
 	age = Integer.parseInt(ageParam);
 	
 	if(age>=20){
    	response.sendRedirect("res_ex01_ok.jsp");
    	
    }
    else{
		response.sendRedirect("res_ex01_no.jsp");
    }
    
    %>