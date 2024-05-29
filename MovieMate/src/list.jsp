<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="cs.BoardDAO"%>
<%@page import="cs.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<% 
	ArrayList<BoardDTO> dtos = new ArrayList<BoardDTO>();
	BoardDAO dao = new BoardDAO();
	
	dtos = dao.list();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 목록</title>
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
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>날짜</th>
			</tr>
			<%
			//화면 출력
			for(BoardDTO dto : dtos) {
        	%>
			<tr>
          		<td><%= dto.getId()%></td>
          		<td><a href='detail.jsp?id=<%=dto.getId()%>'><%= dto.getTitle()%></a></td>
          		<td><%= dto.getAuth()%></td>
          		<td><%= dto.getDate()%></td>
        	</tr>
        	<% } %>
		</table>
	</div>
</body>
</html>