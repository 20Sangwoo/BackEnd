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
int count = dao.getNCount();

// 현재 페이지 번호 확보
if(page_ != null && !page_.equals("")) {
	p = Integer.parseInt(page_);
}

// startNum
startNum = p - (p-1) % numOfPages;

// lastNum
lastNum = (int)Math.ceil((double)count / numOfRecords);
ArrayList<BoardDTO> dtos = dao.noticeList(p, numOfRecords);

String isAdmin = (String) session.getAttribute("isAdmin");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>공지사항</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <link href="../Main/main.css" rel="stylesheet">
</head>
<body>
	<%@include file="../Main/mainBar.jsp" %>

<div class=blackC style="height: 1000px;">
	<div class="container"><br>
		<h1 class="text-center font-weight-bold">공지사항</h1><br>
		<div class="container">
		<div class="row">
			<form method="post" name="search" action="searchN.jsp">
				<table class="pull-right" style="float: right;">
					<tr>
						<td><select class="form-control" name="searchField">
								<option value="제목">제목</option>
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
				<th>제목</th>
				<th>작성자</th>
				<th>날짜</th>
			</tr>
			</thead>
			<tbody>
			<%
			//화면 출력
			for(BoardDTO dto : dtos) {
        	%>
			<tr> 
          		<td><a href='nDetail.jsp?id=<%=dto.getId()%>'><%= dto.getTitle()%></a></td>
          		<td><%= dto.getAuth()%></td>
          		<td><%= dto.getDate()%></td>
        	</tr>
        	<% } %>
        	</tbody>
		</table>

	    <!-- 버튼 영역 -->
        <% if ("true".equals(isAdmin)) { %>
        <div id="auth-buttons">
		<div style="float: right;">
			<button type="button" class="btn btn-light" onClick="location.href='noticeForm.jsp'">글 등록</button>
		</div>
	</div>
	<% } %>
		<br>
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
        	<li class="page-item"><a class="page-link" href="noticeList.jsp?page=<%= startNum + i %>"><%= startNum + i %></a></li>
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