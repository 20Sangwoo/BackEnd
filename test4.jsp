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

<div id="auth-buttons">
   <button type="button" id="sign" data-bs-toggle="modal" data-bs-target="#loginModal">
    로그인
    </button>
    <button type="button" id="sign" data-bs-toggle="modal" data-bs-target="#signupModal">
    회원가입
    </button>
</div>

<!-- 모달 영역 -->
<div class="modal fade" id="loginModal">
    <div class="modal-dialog">
        <div class="modal-content">
        
            <!-- 모달 헤더 -->
            <div class="modal-header">
                <h4 class="modal-title">로그인</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            
            <div class="modal-body">
            	<form action="signupPro.jsp" method="post">
            		<div calss="form-group">
            		<label for="id">id:</label>
            		 <input type="text" class="form-control" id="id" name="id">
            		</div>
            	 
					    <div class="form-group">
					      <label for="pwd">PASSWORD:</label>
					      <input type="password" class="form-control" id="pwd" name="pwd">
      			</div>
      			<div class="modal-footer">
        			<button  type="submit" class="btn btn-secondary">로그인</button>
      			</div>
            </div>
                    
        </div>
    </div>
</div>

<div class="modal fade" id="signupModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- 모달 헤더 -->
            <div class="modal-header">
                <h4 class="modal-title">회원가입</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            
            <div class="modal-body">
            	<form action="signupPro.jsp" method="post">
            		<div calss="form-group">
            		<label for="id">id:</label>
            		 <input type="text" class="form-control" id="id" name="id">
            		</div>
            	 <div class="form-group">
					      <label for="name">EMAIL:</label>
					      <input type="text" class="form-control" id="email" name="email">
					    </div>
					    <div class="form-group">
					      <label for="name">USERNAME:</label>
					      <input type="text" class="form-control" id="username" name="username">
					    </div>
					    <div class="form-group">
					      <label for="pwd">PASSWORD:</label>
					      <input type="password" class="form-control" id="pwd" name="pwd">
      			</div>
      			<div class="modal-footer">
        			<button  type="submit" class="btn btn-secondary">회원가입</button>
      			</div>
            </div>
        </div>
    </div>
</div>

<!-- 메인 화면 메뉴 구성 -->
<!-- 게시판 메뉴 및 로고 -->
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
        <a class="nav-link" href="index.html"><img id="logo" src="logo.png" alt="MovieMate 로고"></a>
        
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
                        <li><a href="#">공지사항</a></li>
                        <li><a href="#">Q&A</a></li>
                    </ul>  
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- 나머지 내용 -->
<div class="blackC">
    <h1>개봉예정 영화</h1>
    <div class="mainmovie">
        <img src="design.png" alt="design">
        <img src="원더랜드(2024.06.05).png" alt="wonderland">
        <img src="아침이 오면 공허해진다(2024.05.29).png" alt="moning">
    </div>
    <h2>이달의 추천영화 Top5</h2>
    <div class="movieList">
        <img src="Furiosa.png" alt="Furiosa">
        <img src="crimectiy.png" alt="crimectiy">
        <img src="shedied.png" alt="shedied">
        <img src="Youth18X2.png" alt="Youth18X2">
        <img src="High-Q.png" alt="High-Q">
    </div>
</div>

</body>
</html>