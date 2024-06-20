<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="cs.BoardDAO"%>
<%@page import="cs.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<% 
String page_ = request.getParameter("page");

int numOfRecords = 10;    // 한 페이지에 보여줄 데이터
int numOfPages = 5;       // 한 페이지에 보여줄 페이지 수
int startNum = 1;
int lastNum;
int p = 1;

BoardDAO dao = new BoardDAO();
int count = dao.getQACount();

// 현재 페이지 번호 확보
if(page_ != null && !page_.equals("")) {
	p = Integer.parseInt(page_);
}

// startNum
startNum = p - (p-1) % numOfPages;

// lastNum
lastNum = (int)Math.ceil((double)count / numOfRecords);
ArrayList<BoardDTO> dtos = dao.QAList(p, numOfRecords);


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

<div class=blackC style="height: 1000px;">
	<div class="container"><br>
		<h1 class="text-center font-weight-bold">Q&A 게시판</h1><br>
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
				<th style="width:30%">제목</th>
				<th style="width:10%">작성자</th>
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
          		<td><a href='detail.jsp?id=<%=dto.getId()%>'><%= dto.getTitle()%></a></td>
          		<td><%= dto.getAuth()%></td>
          		<td><%= dto.getDate()%></td>
          		<td>0</td>
        	</tr>
        	<% } %>
        	</tbody>
		</table>
		<div style="float: right;">
			<button type="button" class="btn btn-light" onClick="location.href='qaForm.jsp'">글 등록</button>
		</div>
	</div>
	
		<br>
	<!-- 페이지네이션 -->
	<div class="d-flex justify-content-center">                 
    	<ul class="pagination">
        	<!-- prev -->
        	<% if(startNum <= 1) { %>
        	<li class="page-item"><a class="page-link" href="#" onclick="alert('이전 페이지가 없습니다.')">Prev</a></li>
        	<% } else { %>
        	<li class="page-item"><a class="page-link" href="noticeList.jsp?page=<%= startNum - 1 %>">Prev</a></li>
        	<% } %>

        	<!-- 페이지 번호 -->
        	<% for(int i = 0; i < numOfPages; i++) {
        		if(startNum + i <= lastNum) { %> 
        	<li class="page-item"><a class="page-link" href="qaList.jsp?page=<%= startNum + i %>"><%= startNum + i %></a></li>
        	<% } } %>
        
        	<!-- next -->
        	<% if(startNum + numOfPages > lastNum) { %>
        	<li class="page-item"><a class="page-link" href="#" onclick="alert('다음 페이지가 없습니다.')">Next</a></li>
        	<% } else { %>
        	<li class="page-item"><a class="page-link" href="noticeList.jsp?page=<%= startNum + numOfPages %>">Next</a></li>
        	<% } %>
    	</ul>
	</div>
	</div>
</body>
</html>