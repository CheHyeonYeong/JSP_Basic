<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Request video.jsp</title>
</head>
<body>
	<!--  테이블 페이지에서 a태그의 url 주소 뒤에 있는 title이라는 변수로 각각의 식별값을 담아서 이동
	okay 페이지에서 넘어오는 값에 따라서 if~ else if ~ else 형태로 다른 화면이 보이게 처리	
	 -->
	 <div align = "center"> <!-- 블럭을 만들어 사용하는 태그, 한 라인을 만들어서 사용한다 -->
	 	<table>
	 		<tr>
	 			<td>이미지</td>
	 			<td>장르</td>
	 			<td>이름</td>
	 			<td>등록일</td>
	 		</tr>
	 		<tr>
	 			<td><a href="req_video_ok.jsp?num=1">
	 			<img alt="첫영상" src="C:/Users/hyeonyeong/Pictures/Saved Pictures/cute.png"></td>
	 			<td>프로그램</td>
	 			<td>자바 수업 중 1</td>
	 			<td>20240408</td>
	 		</tr>
	 		<tr>
	 			<td><a href="req_video_ok.jsp?num=2">
	 			<img alt="첫영상" src="C:/Users/hyeonyeong/Pictures/Saved Pictures/cute.png"></td>
	 			<td>프로그램</td>
	 			<td>파이썬 입문 수업(생활코딩)</td>
	 			<td>20240408</td>
	 		</tr>
	 		
	 	</table>
	 	
	 </div>
	 
</body>
</html>