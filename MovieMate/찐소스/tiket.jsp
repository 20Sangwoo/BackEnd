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
  		<label for="moivename">영화 선택:</label>
  		<input type="text" id="moviename" value="영화">
  		
  		<br><br>
  		
  		<label for="movie-time">영화 시간:</label>
  		<select id="movie-time" name="movie-time">
  			<option value="2024-06-23 11:00">2024-06-23 11:00</option>
  		</select>
  		<br><br>
  		<label for="movie-room">영화관:</label>
  		<select id="movie-room" name="movie-room">
  			<option value="무비메이트">무비메이트</option> <!-- for문 사용하면 될듯 -->
  		</select>
  		<br><br>
  		
  		<div class="container2">
  		   <div class="seat-plan">
   			<h2>스크린</h2>
   			<div class="seat-row">
      			<div class="seat" data-seat="A1">A1</div>
      			<div class="seat" data-seat="A2">A2</div>
      			<div class="seat" data-seat="A3">A3</div>
      			<div class="seat" data-seat="A4">A4</div>
    		</div>
       	  <div class="seat-row">
      			<div class="seat" data-seat="B1">B1</div>
      			<div class="seat" data-seat="B2">B2</div>
      			<div class="seat" data-seat="B3">B3</div>
      			<div class="seat" data-seat="B4">B4</div>
    	  </div>
        </div>

        <br>

    <button type="submit" class="btn-tiket">예매완료</button>
  	</form>
  </div>
  </div>
  
    <script>
	document.addEventListener('DOMContentLoaded', function() {
  	const seats = document.querySelectorAll('.seat');

  	seats.forEach(seat => {
    seat.addEventListener('click', function() {
      this.classList.toggle('selected'); // 선택된 좌석에 'selected' 클래스 토글
    });
  });
});
</script>
  
  
</body>