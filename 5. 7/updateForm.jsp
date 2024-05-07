<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" %>
<% 	
	// list.jsp에서 id 값 받아오기
	String id = request.getParameter("id"); // id 값을 받아오는 부분입니다.

	Class.forName("org.mariadb.jdbc.Driver");
	String url ="jdbc:mariadb://localhost:3306/jinsookdb";
	String user ="jinsook";
	String passwd ="1111";
	Connection con = DriverManager.getConnection(url, user, passwd);
	
	// id 값을 조건으로 SQL 문을 작성하기
	String sql = "SELECT * FROM users WHERE id = ?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();
	// 쿼리 실행 후 결과 가져오기
	
	// 만약 사용자가 존재한다면 해당 정보를 가져와서 HTML 폼에 채워넣습니다.
	String name = "";
	if (rs.next()) {
		name = rs.getString("name");
	}
%>	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 정보 변경</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<br>
		<h2 class="text-center font-weight-bold">사용자 정보 변경</h2>
		<hr/>
		<form action="updatePro.jsp" method="post">
		  <div class="form-group">
	      <label for="id">ID:</label>
	      <input type="text" class="form-control" id="id" name="id" value="<%= id %>" readonly>
	    </div>
	    <div class="form-group">
	      <label for="name">NAME:</label>
	      <input type="text" class="form-control" id="name" name="name" value="<%= name %>">
	    </div>
	    <div class="form-group">
	      <label for="pwd">PASSWORD:</label>
	      <input type="password" class="form-control" id="pwd" name="pwd" value="">
	    </div>
	    <br>
	    <div class="text-center">
	    		<input type="submit" value="변경" class="btn btn-secondary">  
					<input type="button" value="삭제" class="btn btn-secondary" onclick="location.href=''">
					<input type="button" value="목록" class="btn btn-secondary" onclick="location.href=''">
			</div>
		</form>
	</div>
</body>
</html>