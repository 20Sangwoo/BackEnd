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
	<title>로그인</title>
	    <link rel="stylesheet" href="login.css" >
</head>
<body>
	  <img id="logo" src="logo.png" class="content-image">
<div class="container"  >   <!--role="dialog" aria-labelledby="login" aria-hidden="true"-->
    <h2>로그인</h2>
    
    <form action="/submit-login" method="post">
        <label for="id">아이디</label>
        <input type="text" id="id" name="id" required>

        <label for="pwd">비밀번호</label>
        <input type="password" id="pwd" name="pwd" required>

        <div class="checkbox">
            <input type="checkbox" id="ch_id" name="ch_id">
            <label for="ch_id">아이디</label>
        </div>

        <div class="checkbox">
            <input type="checkbox" id="ch_autologin" name="ch_autologin">
            <label for="ch_autologin">자동 로그인</label>
        </div>

        <input type="submit" value="로그인" >
    </form>
</div>
</body>
</html>