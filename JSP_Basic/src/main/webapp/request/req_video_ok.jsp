<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    
<% 

String num = request.getParameter("num");
Integer sel = Integer.parseInt(num);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>req_video_ok.jsp</title>
</head>
<body>
	<%
		if(num ==null){
		%>
		잘못된 접근입니다.<br>
		<%
		}else if(sel ==1){
		%>
		<div align="center">
			<h2>자바 수업</h2>
			<p>자바 수업 중에 하나...</p>
			<hr>
			<iframe width="640" height="480" src="https://www.youtube.com/embed/PLltmXN4RGQ" title="지역변수와 전역변수의 사용 예 | 함수의 구성 이해 | 파이썬 프로그래밍" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen>
				<%-- 외부에 있는 내용을 불러와서 현재의 페이지에 불러오는 태그 --%>
			
			</iframe>
			
		</div>	
			
		<%
		}else if(sel ==2){
			%>
			<div align="center">
				<h2>파이썬 수업을 리뉴얼 했습니다.</h2>
				<p>생활코딩 파이썬 수업</p>
				<hr>
				<iframe width="853" height="480" src="https://www.youtube.com/embed/wDi-oNm12lo" title="변수의 개념 | 데이터와 함수 | 파이썬 프로그래밍" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen>
				
				</iframe>
				
			</div>	
				
			<%
		}
	%>
</body>
</html>