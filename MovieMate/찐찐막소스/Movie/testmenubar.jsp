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
        
        <!-- 오른쪽 메뉴 항목 -->
        <div class="right-nav">
            <ul class="menu">
            
            <li>
            	 <a class="nav-link" href="main.jsp"><img id="logo" src="./img/logo.png" alt="MovieMate 로고"></a>
               <li>
                    <a class="nav-link" href="#">영화</a>
                    <ul class="submenu">
                        <li><a href="MovieList.jsp">상영 중인 영화</a></li>
                    </ul>
                </li>
                
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
                         <li><a href="noticeList.jsp">공지사항</a></li>
                        <li><a href="#">Q&A</a></li>
                    </ul>  
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- 모달 영역 -->
	<%
    String id = (String) session.getAttribute("id");
    String errorMessage = (String) request.getAttribute("errorMessage");
 
    if (id != null && !id.equals("")) {
        response.sendRedirect("main.jsp");
    } else {
	%>
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
            				<label for="id">id:</label>
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
	<% }%>



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


</body>
</html>