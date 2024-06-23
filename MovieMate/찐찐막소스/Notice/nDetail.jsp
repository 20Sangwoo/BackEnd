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
        id = "defaultId"; 
    }
    
    // 특정 게시물을 가져옴
    BoardDAO dao = new BoardDAO();
    BoardDTO dto = dao.getnBoardById(id);
%>
<html>
<head>
	<meta charset="UTF-8">
	<title>공지사항</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	
	<link href="../Main/main.css" rel="stylesheet">
</head>
<body>
    <style>
        body {
            background-color: #000000;
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            min-height: 100vh;
            color: #FFFFFF;
        }
        .header {
            width: 100%;
            background-color: #FFFFFF;
            padding: 50px 0;
            border-bottom: 1px solid #000000;
            text-align: center;
        }
        .header table {
            margin: 0 auto;
            width: auto; 
            margin-bottom: 0;
        }
        .container {
            background-color: #FFFFFF;
            padding: 20px;
            width: 50%;
            max-width: 900px;
            text-align: center;
            margin-top: 0px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            position: relative;
            z-index: 1;
            flex: 1; 
            display: flex;
            flex-direction: column;
        }
        .container h1 {
            margin-top: 0;
            color: #000000;
            position: relative;
            z-index: 2;
        }
        .table-hover {
            margin-bottom: 10px;
        }
        .btn-group {
            display: flex;
            justify-content: flex-end;
            position: absolute;
            right: 20px;
            bottom: 20px;
        }
        .btn-group button {
            margin-left: 10px;
            padding: 5px 10px;
            font-size: 14px;
        }
    </style>
    
	<div class="container" style="max-width: 900px; margin: auto; background-color: #FFFFFF; padding: 20px;"><br>
		<h1 class="text-center font-weight-bold"><%= dto.getTitle() %></h1><br>
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
          		
          		 <div class="btn-group">
            <button type="button" class="btn btn-sm btn-primary">수정</button>
            <button type="button" class="btn btn-sm btn-danger" onclick="confirmDelete('<%= dto.getId() %>')">삭제</button>
        		</div>
                <button class="btn btn-sm btn-secondary btn-back" onclick="goBack()">뒤로가기</button>
    </div>
    <script>
    	function confirmDelete(id) {
        if (confirm("정말로 삭제하시겠습니까?")) {
            location.href = 'noticeDelete.jsp?id=' + id;
        }
    }
        function goBack() {
            window.history.back();
        }
    </script>

</body>
</html>