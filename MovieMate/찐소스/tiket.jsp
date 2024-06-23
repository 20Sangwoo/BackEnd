<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>영화는moviemate</title>
     <link href="tiket.css" rel="stylesheet">
    
</head>
<body>
<%@include file="testmenubar.jsp" %>

<div class="container">	
  <div class="tiket">
  	<h2>영화 예매</h2>
  	<form action="tiket-select.jsp" method="post">
  	
  		<img src="./img/crimectiy.png" alt="이미지를 불러 올 수 없습니다." style="max-width: 50%; height: auto;" >
  		<br> <br>
  		
  		<label for="moivename">영화명:</label>
  		<input type="text" id="moviename" value="영화">
  		
  		<br><br>
  		
  		<label for="movie-date">영화 날짜:</label>
  		<select id="movie-date" name="movie-date">
  			<option value="2024-06-23 11:00">2024-06-23</option>
  		</select>
  		
  		<br><br>
  		<label for="movie-time">영화 시간:</label>
  		<select id="movie-time" name="movie-time">
  			<option value="무비메이트">09:00</option> <!-- for문 사용하면 될듯 -->
  		</select>
  		<br><br>
 

    <button type="submit" class="btn-tiket">예매완료</button>
    
  	</form>
  </div>
  </div>
  
  
  
</body>