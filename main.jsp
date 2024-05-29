<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="member.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> 
    <link href="main.css" rel="stylesheet">
</head>
<body>
    <!-- 로그인 버튼 -->
  <div id="auth-buttons">
    <button id="login" onclick="openLoginModal()">로그인</button>
    <button id="sign" onclick="openSignModal()">회원가입</button>
  </div>
    <!-- 메인 화면 메뉴 구성 -->
    <!-- 게시판 메뉴 및 로고 -->
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
      <div class="container-fluid">
        <!-- 왼쪽 메뉴 항목 -->
        <div class="left-nav">
          <ul class="menu">           <!--메뉴 묶음-->
            <li>
              <a class="nav-link" href="#">영화</a>
                <ul class="submenu">                      <!-- 서브 메뉴 항목-->
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
          <ul class="menu">           <!--메뉴 묶음-->
            <li>
              <a class="nav-link" href="#">이벤트</a>
                <ul class="submenu">                      <!-- 서브 메뉴 항목-->
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
            </ul>
            <!--모달창-->
            <div class="modal" id="loginModal">
              <iframe src="login.jsp" style="width: 40%; height: 70%; border: none;"></iframe>
            </div>
            <div class="modal" id="signupModal">
              <iframe src="signup.jsp" style="width: 40%; height: 70%; border: none;"></iframe>
            </div>
        </div>
      </nav>
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
   
  </div>

	
</body>
</html>