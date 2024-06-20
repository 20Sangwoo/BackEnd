<!--
	작성자 : whtk
	작성일 : 2024. 6. 20.
	기능	 :
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    HttpSession sessions = request.getSession();
	session.invalidate();
%>
<script>
alert("로그아웃 되었습니다.");
window.location.href = "main.jsp";
</script>	