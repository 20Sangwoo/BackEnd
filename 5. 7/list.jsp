<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
  //DB 연동
	Class.forName("org.mariadb.jdbc.Driver");

	String url = "jdbc:mariadb://localhost:3306/member";
	String user = "Jsp";
	String password = "1111";
	Connection con = DriverManager.getConnection(url, user, password);
	
	Statement stmt = con.createStatement();
	String sql = "select * from login";
	ResultSet rs = stmt.executeQuery(sql);
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 목록</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container"><br>
		<h1 class="text-center font-weight-bold">사용자 정보</h1><br>
		<table class="table table-hover">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>비밀번호</th>
			</tr>
			<%
			//화면 출력
			while(rs.next()) {
        	%>
			<tr>
          		<td onclick="location.href='updateForm.jsp'"><%= rs.getString("id") %></td>
          		<td><%= rs.getString("name") %></td>
          		<td><%= rs.getString("pwd") %></td>
        	</tr>
        	<% 
			}
			rs.close();
			stmt.close();
			con.close();
			%>
		</table>
	</div>
</body>
</html>