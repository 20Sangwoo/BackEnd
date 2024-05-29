<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="cs.BoardDAO"%>
<%@page import="cs.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<% 
    // 요청 파라미터로 게시물 ID를 받음
    String id = request.getParameter("id");
    if (id == null) {
        id = "defaultId"; // 기본값을 지정하거나 오류 처리 로직을 추가할 수 있음
    }
    
    // 특정 게시물을 가져옴
    BoardDAO dao = new BoardDAO();
    BoardDTO dto = dao.getBoardById(id);
%>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 목록</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container"><br>
		<h1 class="text-center font-weight-bold">임시 게시판</h1><br>
		<table class="table table-hover">
			<tr>
				<th>제목 : <%= dto.getTitle() %></th>
				<th>작성자 : <%= dto.getAuth()%></th>
				<th>날짜 : <%= dto.getDate() %></th>
			</tr>
			<tr>
          		<td><%= dto.getDetail() %></td>
          		</tr>
          		</table>
	</div>
</body>
</html>