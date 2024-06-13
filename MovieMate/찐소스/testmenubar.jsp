<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MovieMate</title>
	<script src="member.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> 
    <link href="main.css" rel="stylesheet">
</head>
<body>
<!-- 버튼 영역 -->
	<div id="auth-buttons">
   		<button type="button" id="login" data-bs-toggle="modal" data-bs-target="#loginModal">
   		 로그인
    	</button>
    	<button type="button" id="sign" data-bs-toggle="modal" data-bs-target="#signupModal">
    	회원가입
    	</button>
	</div>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <!-- 왼쪽 메뉴 항목 -->
        <div class="left-nav">
            <ul class="menu">
                <li>
                    <a class="nav-link" href="#">영화</a>
                    <ul class="submenu">
                        <li><a href="#">상영 중인 영화</a></li>
                    </ul>
                </li>
                <li>
                    <a class="nav-link" href="#">예매</a>
                    <ul class="submenu">
                        <li><a href="#">예매하기</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        
        <!-- 로고 -->
        <a class="nav-link" href="main.jsp"><img id="logo" src="./img/logo.png" alt="MovieMate 로고"></a>
        
        <!-- 오른쪽 메뉴 항목 -->
        <div class="right-nav">
            <ul class="menu">
                <li>
                    <a class="nav-link" href="#">이벤트</a>
                    <ul class="submenu">
                        <li><a href="#">진행중 이벤트</a></li>
                        <li><a href="#">당첨자 발표</a></li>
                        <li><a href="#">지난 이벤트</a></li>
                    </ul>
                </li>
                <li>
                    <a class="nav-link" href="#">게시판</a>
                    <ul class="submenu">
                         <li><a href="notice.jsp">공지사항</a></li>
                        <li><a href="#">Q&A</a></li>
                    </ul>  
                </li>
            </ul>
        </div>
    </div>
</nav>
</body>
</html>