<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page import="com.myweb.util.PageVO"%>
<%@page import="com.myweb.board.model.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome to MyWorld</title>
    <!-- Bootstrap Core CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../css/business-casual.css" rel="stylesheet">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
</head>
<body>
    <%@include file="../include/header.jsp" %>
    <div class="container" align="center">
        <h3>MyWeb 게시판</h3>
        <hr>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>글 번호</th>
                    <th>작성자</th>
                    <th>제목</th>
                    <th>날짜</th>
                    <th>조회수</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="board" items="${requestScope.list}">
                    <tr>
                        <td>${board.num}</td>
                        <td>${board.writer}</td>
                        <td><a href="content.board?num=${board.num}">${board.title}</a></td>
                        <td>${board.regdate}</td>
                        <td>${board.hit}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <c:set var="pagevo" value="${requestScope.pageVO}" />
        
        <div align="center">
           <ul class="pagination pagination-sm">
 			<c:if test="${pagevo.isPrev()}">
                   <li><a href="">이전</a></li>
               </c:if>
        
               <c:forEach var="i" begin="${pagevo.getStartPage()}" end="${pagevo.getEndPage()}" step="1">
                   <li class="${i eq param.pageNum ? 'active' : 'passive'}"><a href="list.board?pageNum=${i}">${i}</a></li>
               </c:forEach>
        
              <c:if test="${pagevo.isNext()}">
                  <li><a href="">다음</a></li>
              </c:if>
        </ul>
        </div>
    </div>
    <%@include file="../include/footer.jsp" %>
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
