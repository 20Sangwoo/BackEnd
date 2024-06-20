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
	<%
	 HttpSession sessions = request.getSession();
     String id = (String) session.getAttribute("userId");
    %>
	<div id="auth-buttons">
	    <!-- 버튼 영역 -->
        <% if (id == null) { %>
            <button type="button" id="login" data-bs-toggle="modal" data-bs-target="#loginModal">
                로그인
            </button>
            <button type="button" id="sign" data-bs-toggle="modal" data-bs-target="#signupModal">
                회원가입
            </button>
        <% } else { %>
            <form action="logout.jsp" method="post">
            <button type="submit" id="logout">
                로그아웃
            </button>
        </form>
            <button type="button" id="mypage" onclick="location.href='myPage.jsp'">
                마이페이지
            </button>
        <% } %>
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
            		<form action="loginPro.jsp" method="post">
            			<div class="form-group">
            				<label for="id">ID:</label>
            		 		<input type="text" class="form-control" id="id" name="id">
            			</div>
            	 
					    <div class="form-group">
					      <label for="pwd">PASSWORD:</label>
					      <input type="password" class="form-control" id="password" name="password">
      					</div>
      					
      					<div class="modal-footer">
        				<button  type="submit" class="btn btn-secondary">로그인</button>
      					</div>
    				</form>
            	</div>            
        	</div>
    	</div>
	</div>
	<%
    // 세션에서 회원가입 메시지 가져오기
    String signupMessage = (String) session.getAttribute("signupMessage");
    if (signupMessage != null && !signupMessage.isEmpty()) {
	%>
	<script>
    	alert("<%= signupMessage %>");
	</script>
	<%
    // 메시지 출력 후 세션에서 삭제
    session.removeAttribute("signupMessage");
    }
	%>
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
            			<div class="form-group">
            				<label for="id">ID:</label>
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
					    	<input type="password" class="form-control" id="password" name="password">
      					</div>
      				
      					<div class="modal-footer">
        					<button  type="submit" class="btn btn-secondary">회원가입</button>
      					</div>
      				</form>
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
                        <li><a href="movies.jsp">상영 중인 영화</a></li>
                    </ul>
                </li>
                <li>
                    <a class="nav-link" href="#">예매</a>
                    <ul class="submenu">
                        <li><a href="book.jsp">예매하기</a></li>
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
                        <li><a href="preEv.jsp">진행 중인 이벤트</a></li>
                        <li><a href="winningEv.jsp">당첨자 발표</a></li>
                        <li><a href="lastEv.jsp">지난 이벤트</a></li>
                    </ul>
                </li>
                <li>
                    <a class="nav-link" href="#">게시판</a>
                    <ul class="submenu">
                         <li><a id="notice-link" href="noticeList.jsp">공지사항</a></li>
                        <li><a href="qaList.jsp">Q&A</a></li>
                    </ul>  
                </li>
            </ul>
        </div>
    </div>
</nav>
</body>
</html>