<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입 결과</title>
    <style>
        body {
            background-color: black;
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .message {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }
        .back-button {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<%
String url = "jdbc:mariadb://localhost:3306/jspdb";
String username = "root";
String password = "1111";

try {
    Class.forName("org.mariadb.jdbc.Driver");
    
    Connection conn = DriverManager.getConnection(url, username, password);

    String idValue = request.getParameter("id");
    String emailValue = request.getParameter("email");
    String usernameValue = request.getParameter("username");
    String passwordValue = request.getParameter("password");

    String sql = "INSERT INTO users (id, email, username, password) VALUES (?, ?, ?, ?)";
    PreparedStatement statement = conn.prepareStatement(sql);
    statement.setString(1, idValue);
    statement.setString(2, emailValue);
    statement.setString(3, usernameValue);
    statement.setString(4, passwordValue);
    statement.executeUpdate();

    %><div class='message'>회원가입되었습니다!</div><%
    
    conn.close();
} catch (Exception e) {
    out.println("회원가입에 실패했습니다.");
    e.printStackTrace();
}
%>
<button class="back-button" onclick="goBack()">홈 화면으로</button>
<script>
    function goBack() {
        window.history.back();
    }
</script>
</body>
</html>
