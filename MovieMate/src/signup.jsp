<!--
	작성자 : Ksm
	작성일 : 2024. 5. 27.
	 기능 : 
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	  <link rel="stylesheet" href="signup.css" >
</head>
<body>
	<img id="logo" src="logo.png" class="content-image">
<div class="container">
    <h2>회원가입</h2>
    <form action="signuppro.jsp" method="post">
        <label for="id">닉네임</label>
        <input type="text" id="name" name="name" required>

        <label for="id">이메일</label>
        <input type="text" id="em" name="em" required>
    
        <label for="id">아이디</label>
        <input type="text" id="id" name="id" required>

        <label for="pwd">비밀번호</label>
        <input type="password" id="pwd" name="password" required>


        <input type="submit" value="회원가입" >
    </form>
</div>
	
</body>
</html>
