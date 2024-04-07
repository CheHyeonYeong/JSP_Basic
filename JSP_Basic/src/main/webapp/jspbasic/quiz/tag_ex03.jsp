<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, java.util.Collections, java.util.Random"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로또 번호 생성기</title>
</head>
<body>
    <%
    // ArrayList 생성
    ArrayList<Integer> lottoNumbers = new ArrayList<>();	//정수형 ArrayList 생성
    Random random = new Random();							//랜덤 객체 생성

    // 1~45까지의 랜덤한 번호를 ArrayList에 추가
    while (lottoNumbers.size() < 6) {						//배열 사이즈가 6이 될때까지 반복
        int num = random.nextInt(45) + 1;
        if (!lottoNumbers.contains(num)) {					//중복제거
            lottoNumbers.add(num);							
        }
    }

    // 오름차순 정렬
    Collections.sort(lottoNumbers);				
    %>

    <h2>이번 주 로또 번호: [<%
    for (int i = 0; i < lottoNumbers.size(); i++) {
        out.print(lottoNumbers.get(i));
        if (i != lottoNumbers.size() - 1) {
            out.print(", ");
        }
    }
    %>]</h2>
</body>
</html>
