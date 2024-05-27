<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%
    // 세션에서 ID 값을 가져옴
    String id = (String) session.getAttribute("id");

    // ID 값이 있으면 이미 로그인된 상태이므로 환영 페이지로 이동
    if(id != null && !id.equals("")) {
        response.sendRedirect("welcome.jsp");
    } else {
%>
<div class="container">
    <br>
    <h2 class="text-center font-weight-bold">로그인</h2>
    <hr/>
    <form action="" method="post">
        <div class="form-group">
            <label for="id">ID:</label>
            <input type="text" class="form-control" id="id" name="id">
        </div>
        <div class="form-group">
            <label for="pwd">PASSWORD:</label>
            <input type="password" class="form-control" id="pwd" name="pwd">
        </div>
        <br>
        <div class="text-center">
            <button type="button" class="btn btn-secondary" onclick="location.href='list.jsp'">확인</button>
        </div>
    </form>
</div>
<%
    }
%>
</body>
</html>