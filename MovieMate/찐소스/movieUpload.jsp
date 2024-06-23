<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>영화는moviemate</title>
	<link href="movieUpload.css" rel="stylesheet">
</head>
<body>
 <%@include file="testmenubar.jsp" %>
 
 	<div class="container">
	 <div class="moiveUpload">
	 <h2>영화 업로드</h2>
	 <form action="MovieList.jsp" method="post" enctype="multipart/form-data">
	 	<label for="movie-name">영화명:</label>
	 	<input type="text" id="movie-name" value="영화명">
	 	
	 	<br><br>
	 	
	 	<label for="moive-plot">줄거리:</label>
	 	<input type="text" id="moive-plot" value="줄거리">
	 	
	 	<br><br>
	 	
	 	
	 	<label for="moive-opne date">개봉일:</label>
	 	<input type="date" id="moive-opne date" value="줄거리">
	 	
	 	<br><br>
	 	
	 
	 	<label for="movie-rank">등급:</label>
	 	<input type="text" id="movie-rank" value="등급">
	 	
	 	<br><br>
	 	
	 	<label for="movie-genre">장르:</label>
	 	<input type="text" id="moive-genre" value="장르">
	 	
	 	<br><br>
	 	
	 	<label for="nation">국가:</label>
	 	<input type="text" id="nation" value="국가">
	 	
	 	<br><br>
	 	
	 	<label for="movie-playtime">러닝타임:</label>
	 	<input type="text" id="movie-playtime" value="러닝타임">
	 	
	 	<br><br>
	 	
	 	<label for="movie"></label>
	 	
	 	<label for="movie-img">포스터:</label>
	 	<input type="file" id="movie-img" name="movie-img" value="이미지">
	 	
	 	<br><br>
	 	
	 	<button type="submit">등록하기</button>
	 </form>
  </div>
</div>
</body>
</html>