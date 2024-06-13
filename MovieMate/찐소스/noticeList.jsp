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
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  	<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link href="main.css" rel="stylesheet">
</head>
<body>
	<%@include file="mainBar.jsp" %>

<div class=blackC style="height: 800px;">
	<div class="container"><br>
		<h1 class="text-center font-weight-bold">공지사항</h1><br>
		<div class="container">
		<div class="row">
			<form method="post" name="search" action="searchPost.jsp">
				<table class="pull-right" style="float: right;">
					<tr>
						<td><select class="form-control" name="searchField">
								<option value="0">선택</option>
								<option value="bbsTitle">제목</option>
								<option value="userID">작성자</option>
						</select></td>
						<td><input type="text" class="form-control"
							placeholder="검색어 입력" name="searchText" maxlength="100"></td>
						<td><button type="submit" class="btn btn-success" style= "background-color: grey;">검색</button></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<br>
		<table class="table table-hover">
			<thead>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>날짜</th>
				<th>조회</th>
			</tr>
			</thead>
			<tbody>
			<%
			//화면 출력
			for(BoardDTO dto : dtos) {
        	%>
			<tr>
          		<td><%= dto.getId()%></td>
          		<td><a href='detail.jsp?id=<%=dto.getId()%>'><%= dto.getTitle()%></a></td>
          		<td><%= dto.getAuth()%></td>
          		<td><%= dto.getDate()%></td>
          		<td>0</td>
        	</tr>
        	<% } %>
        	</tbody>
		</table>
	</div>
	</div>
</body>
</html>