<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MovieMate</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> 
    <link href="main.css" rel="stylesheet">
</head>
<body>
	<%@include file="mainBar.jsp" %>

<!-- 나머지 내용 -->
<div class="blackC">
<br><br>
    <h1>개봉 예정 영화</h1>
    <div class="mainmovie">
        <img src="./img/design.png" alt="design">
        <img src="./img/원더랜드(2024.06.05).png" alt="wonderland">
        <img src="./img/아침이 오면 공허해진다(2024.05.29).png" alt="moning">
    </div>
    
    <h3>이 달의 추천영화 Top5</h3>
    <br>
    <div class="movieList">
        <img src="./img/Furiosa.png" alt="Furiosa">
        <img src="./img/crimectiy.png" alt="crimectiy">
        <img src="./img/shedied.png" alt="shedied">
        <img src="./img/Youth18X2.png" alt="Youth18X2">
        <img src="./img/High-Q.png" alt="High-Q">
    </div>
</div>

</body>
</html>